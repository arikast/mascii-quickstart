#!/bin/bash

timidity $1 -Ow -o - | lame - -b 64 $2
