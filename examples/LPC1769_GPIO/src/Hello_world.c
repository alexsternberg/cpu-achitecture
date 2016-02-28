/*
===============================================================================
 Name        : Hello_world.c
 Author      : Jackson Zhao
 Version     : 1
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#ifdef __USE_CMSIS
#include "LPC17xx.h"
#endif

#include <cr_section_macros.h>
#include <stdio.h>

//Initialize the port and pin as outputs.
void GPIOinitOut(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		LPC_GPIO0->FIODIR |= (1 << pinNum);
	}
	else if (portNum == 1)
	{
		LPC_GPIO1->FIODIR |= (1 << pinNum);
	}
	else if (portNum == 2)
	{
		LPC_GPIO2->FIODIR |= (1 << pinNum);
	}
	else
	{
		puts("Not a valid port!\n");
	}
}

//Initialize the port and pin as outputs.
void GPIOinitIn(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		LPC_GPIO0->FIODIR &= ~(1 << pinNum);
	}
	else if (portNum == 1)
	{
		LPC_GPIO1->FIODIR &= ~(1 << pinNum);
	}
	else if (portNum == 2)
	{
		LPC_GPIO2->FIODIR &= ~(1 << pinNum);
	}
	else
	{
		puts("Not a valid port!\n");
	}
}

void setGPIO(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		LPC_GPIO0->FIOSET = (1 << pinNum);
		printf("Pin 0.%d has been set.\n",pinNum);
	}
	//Can be used to set pins on other ports for future modification
	else
	{
		puts("Only port 0 is used, try again!\n");
	}
}

//Deactivate the pin
void clearGPIO(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		LPC_GPIO0->FIOCLR = (1 << pinNum);
		printf("Pin 0.%d has been cleared.\n", pinNum);
	}
	//Can be used to clear pins on other ports for future modification
	else
	{
		puts("Only port 0 is used, try again!\n");
	}
}

//Deactivate the pin
void toggleGPIO(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		LPC_GPIO0->FIOPIN ^= (1 << pinNum);
		printf("Pin 0.%d has been toggled.\n", pinNum);
	}
	//Can be used to clear pins on other ports for future modification
	else
	{
		puts("Only port 0 is used, try again!\n");
	}
}

//Deactivate the pin
int readGPIO(uint8_t portNum, uint32_t pinNum)
{
	if (portNum == 0)
	{
		return ( LPC_GPIO0->FIOPIN & (1 << pinNum) ) >> pinNum;
	}
	//Can be used to clear pins on other ports for future modification
	else
	{
		puts("Only port 0 is used, try again!\n");
		return 0;
	}
}

int main(void)
{
    // Force the counter to be placed into memory
    volatile static int i = 0 ;
    //Set pin 0.2 as output
	GPIOinitIn(0,2);
	//Set pin 0.3 as output
	GPIOinitOut(0,3);

    while(1)
    {
    	/*
    	printf("Enter a command to TOGGLE LED(1) or READ(2)\n");
        scanf("%d", &i);

		if (i == 1)
		{
			//Activate pin 0.2
			toggleGPIO(0,3);
		}
		else if (i == 2)
		{
			printf("value of PIO 0.2 is %i", readGPIO(0,2));
		}
		else
		{
			puts("Not a valid option!\n");
		}
		*/
    	if(readGPIO(0,2)) setGPIO(0,3);
    	else  		    clearGPIO(0,3);
    	//int i;
    	//for (i=0; i<10000; i++);
    }
    //0 should never be returned, due to infinite while loop
    return 0;
}
