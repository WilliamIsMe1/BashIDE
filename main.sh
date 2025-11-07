#!/bin/bash

clear
tput cup 0 0
echo Hello, World

window_x_size=((tput lines))
window_y_size=((tput rows))

update_size_vars(){
    export window_x_size=((tput lines))
    export window_y_size=((tput rows))
}

