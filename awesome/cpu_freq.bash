#!/bin/bash

cpupower frequency-info | awk '/current CPU frequency: [0-9]/ {printf(" %s %s \n", $4,$5)}'
