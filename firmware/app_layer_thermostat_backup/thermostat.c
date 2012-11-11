
#include "thermostat.h"


static double temperature=60;

int h1Pin=3;
int h2Pin=4;
int c1Pin=6;
int c2Pin=7;
int c3Pin=8;
int tempPin=44;
_Bool tempOverride=0;





_Bool processRequest()
{
    if (!tempOverride) return 1; else return 0;
}

void setTemperature(int millivolts)
{
    temperature = (millivolts - 500.0) / 10.0;
}


//If temperature drops below 45 turn on the heater and leave it on until 50
//If temperature climbs above 90 turn off the heater and on the AC until 85.
void safetyOverrideCheck()
{
    

    if (temperature>=10 && temperature<=30)
    {
        //50F - 86F
        tempOverride=0;
    } else if (temperature>=32)
    {
        //89.6F
        tempOverride=1;
        overTemp();

    } else if (temperature<=7)
    {
        //44.6F
        tempOverride=1;
        underTemp();
    }
}

void overTemp()
{
    SetPinDigitalOut(h1Pin, 0, 0);
    SetPinDigitalOut(h2Pin, 0, 0);
    SetPinDigitalOut(c1Pin, 1, 0);
}

void underTemp()
{
    SetPinDigitalOut(c1Pin, 0, 0);
    SetPinDigitalOut(c2Pin, 0, 0);
    SetPinDigitalOut(c3Pin, 0, 0);
    SetPinDigitalOut(h1Pin, 1, 0);
}
