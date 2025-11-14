#!/bin/bash

source ./box.sh

clear
tput cup 0 0
echo Hello, World

window_x_size=$(tput cols)
window_y_size=$(tput lines)

update_size_vars(){
    export window_x_size=$(tput lines)
    export window_y_size=$(tput rows)
}

simple_box 2 2 7 3 '#'

tput cup 20 0
