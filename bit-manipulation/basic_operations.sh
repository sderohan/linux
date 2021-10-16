#!/bin/bash

# This file contains the basic bit manipulation operations

# And operator
echo "and opeartor " $(( 7 & 2 ))

# Or operator
echo "or operator " $(( 2 | 1 ))

echo "not operator " $(( ~2 ))

echo "left shift operator " $(( 2 >> 1 ))

echo "right shift operator " $(( 1 << 2 ))

echo "xor operator " $(( 1 ^ 2 ))
