//MURB binary clock


//Copyright 2015 Ubiratan S. Freitas


//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.

//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.

//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.



const unsigned maxvals[]={63,59,59,23};
unsigned vals[4];

byte oldA=0;
byte oldB=0;
byte A=0;
byte B=0;


unsigned long prevtime;


#define minute vals[2]
#define second vals[1]
#define hour vals[3]
#define br vals[0]

unsigned short tempd;
unsigned short tempc;
unsigned short tempb;

#define SETTING_MIN 2
#define SETTING_HOUR 3
#define NORMAL 0

#define NOBLINK 0
#define BLINKMIN 1
#define BLINKHOUR 2

byte state;
boolean per_wait;
unsigned btn_count;
const byte inv[]={0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15};


void setup(void)
{
  pinMode(0,OUTPUT);
  pinMode(1,INPUT);
  pinMode(2,INPUT);
  pinMode(3,INPUT);
  pinMode(A0,OUTPUT);
  pinMode(A1,OUTPUT);
  pinMode(A2,OUTPUT);
  pinMode(A3,OUTPUT);
  pinMode(A4,OUTPUT);
  pinMode(A5,OUTPUT);
  for (int i=4;i<=13;i++)
  {
    pinMode(i,OUTPUT);
  }
  state = SETTING_MIN;
  prevtime = 0;
  minute = 0;
  second = 0;
  hour = 0;
  br = maxvals[0];
  btn_count = 0;
  per_wait = false;
  oldA = bitRead(PIND,2);
  oldB = bitRead(PIND,3);
}


void loop()
{
  unsigned long now = millis();
  unsigned long m = micros();
  boolean ticked,moved;
  static boolean blk_state=0,btn_ready;

  ticked = tic(now);
  switch(state)
  {
    case SETTING_MIN:
      if(ticked)
      {
        blk_state = !blk_state;
        timeToPort(BLINKMIN *(byte)blk_state);
      }
      break;
      
    case SETTING_HOUR:
      if(ticked)
      {
        blk_state = !blk_state;
        timeToPort(BLINKHOUR *(byte)blk_state);
      }
      break;
      
    case NORMAL:
      if(ticked)
      {
        incrementTime();
        timeToPort(0);
      }
      break;
  }
  
  //Button and encoder
  if(now & 0xF) 
  {
    per_wait = true;
  }
  else if(per_wait) // every 16ms
  {
    per_wait = false;
    moved = readEncoder();
    //Read button
    boolean btn_value = bitRead(PIND,1);
    switch(state)
    {
      case NORMAL:
        if(btn_value)
        {
          btn_count = 0;
          btn_ready = true;
        }
        else
        {
          btn_count++;
          if(btn_count>188)// 3 seconds
          {
            state = SETTING_MIN;
            timeToPort(BLINKMIN);
            btn_count = 0;
            btn_ready = false;
          }
        }
        break;
      case SETTING_MIN:
        if(btn_value)
        {
          btn_ready = true;
          btn_count = 0;
          if(moved)
          {
            blk_state = false;
            timeToPort(0);
          }
        }
        else if(btn_ready)
        {
          btn_count++;
          if(btn_count>13)// 0.2 second
          {
            state = SETTING_HOUR;
            timeToPort(BLINKHOUR);
            btn_count = 0;
            btn_ready = false;
          }
        }
        break;
      case SETTING_HOUR:
        if(btn_value)
        {
          btn_ready = true;
          btn_count = 0;
          if(moved)
          {
            blk_state = false;
            timeToPort(0);
          }
        }
        else if(btn_ready)
        {
          btn_count++;
          if(btn_count>13)// 0.2 second
          {
            state = NORMAL;
            btn_count = 0;
            btn_ready = false;
          }
        }
        break;
    }
  }

  //PWM  
  if ((m & 0x1FFF)<((br+1)<<7))
  {
    PORTD = tempd;
    PORTB = tempb;
    PORTC = tempc;
  }
  else
  {
    PORTD = 0;
    PORTB = 0;
    PORTC = 0;
  }
  
}

boolean tic(const unsigned long n)
{
  if((n>=prevtime)? n-prevtime>=1000:n-(signed long)prevtime>=1000)
  {
    prevtime = n;
    return true;
  }
  else
    return false;
}
  

void incrementTime(void)
{
  second++;
  if(second>=60)
  {
    second = 0;
    minute++;
  }
  if(minute>=60)
  {
    minute = 0;
    hour++;
  }
  if(hour>=24) hour = 0; 
}

void timeToPort(byte blk)
{
  unsigned tmin,thour;
  switch (blk)
  {
    case NOBLINK:
      tmin = minute;
      thour = hour;
      break;
    case BLINKMIN:
      thour = hour;
      tmin = (minute)? 0 :63;
      break;
    case BLINKHOUR:
      tmin = minute;
      thour = (hour)? 0 :63;
      break;
  }
  tempd = (inv[((second & B00011110)>>1)] << 4) | ((second & B00100000)>>5) ;
  tempb = (second & 1) | ((tmin & B00000001) << 1) | ((thour & 1)<<2)|((tmin & B00000010) << 2)|((thour & B00000010)<<3)|((tmin & B00000100) << 3) ;
  tempc = ((thour & B00000100) >> 2) | ((tmin & B00001000) >> 2) | ((thour & B00001000) >> 1) | ((tmin & B00010000) >> 1) | ((thour & B00010000)) |((tmin & B00100000));
}

boolean readEncoder()
{
  boolean retval=false;
  A = bitRead(PIND,2);
  B = bitRead(PIND,3);
  if(oldA!=A && !A)
  {
    retval = true;
    if(A==B)
    {
      advanceValue(0);
    }
    else
    {
      advanceValue(1);
    }
  }
  oldA = A;
  oldB = B;
  return retval;
}

void advanceValue(byte dir)
{
  if(dir)
  {
    vals[state]++;
    if(vals[state]>maxvals[state])
    {
      if(state==NORMAL)
        vals[state]=maxvals[state];
      else
        vals[state]=0;
    }
  }
  else
  {
    vals[state]--;
    if(vals[state]>maxvals[state])
    {
      if(state==NORMAL)
        vals[state]=0;
      else
        vals[state]=maxvals[state];
    }
  }
}


