#!/usr/bin/env python
# Made by Multipixelone
# Pump Controller
import RPi.GPIO as GPIO
from time import sleep
GPIO.setmode(GPIO.BCM)


def PumpOn():
    GPIO.output(3, GPIO.HIGH)
    print("Pump On")


def PumpOff():
    GPIO.output(3, GPIO.LOW)
    print("Pump Off")


def Flood():
    PumpOn()
    sleep(4)  # Stopwatch the tray, set the correct time to flood ;)
    PumpOff()
