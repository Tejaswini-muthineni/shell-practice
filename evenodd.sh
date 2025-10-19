#!/bin/bash

NUM=$1

if [ $((NUM%2)) -eq 0 ]; then
    echo "num is even"
else
    echo "num is odd"
fi