#!/bin/bash
socat TCP-LISTEN:7777,fork /dev/ttyUSB0,raw,echo=0,b115200 &
