#!/bin/bash

CONST_DOWN_RIGHT=$'\u250c'      # ┌
CONST_LEFT_DOWN_RIGHT=$'\u252c' # ┬
CONST_LEFT_RIGHT=$'\u2500'      # ─
CONST_LEFT_DOWN=$'\u2510'       # ┐
CONST_UP_LEFT_DOWN=$'\u2524'    # ┤
CONST_UP_DOWN=$'\u2502'         # │
CONST_UP_RIGHT_DOWN=$'\u251c'   # ├
CONST_CROSS=$'\u253c'           # ┼
CONST_UP_LEFT=$'\u2518'         # ┘
CONST_UP_LEFT_RIGHT=$'\u2534'   # ┴
CONST_UP_RIGHT=$'\u2514'        # └


# https://en.wikipedia.org/wiki/Box-drawing_characters

simple_box() { # x y width height char
    local x=$(( $1 - 1 ))
    local y=$(( $2 - 1 ))
    local width=$(( $4 - 1 ))
    local height=$(( $3 - 1 ))
    local char=$5
    local char_length=${#char}
    if [ $char_length -gt 1 ]; then
        return 'error'
    fi
    for i in $(seq $x $(( $x + $width ))); do
        tput cup $i $y
        echo "$char"
    done
    for i in $(seq $x $(( $x + $width ))); do
        tput cup $i $(($y + $height))
        echo "$char"
    done
    for i in $(seq $y $(( $y + $height ))); do
        tput cup $x $i
        echo "$char"
    done
    for i in $(seq $y $(( $y + $height ))); do
        tput cup $(($x + $width)) $i
        echo "$char"
    done
}