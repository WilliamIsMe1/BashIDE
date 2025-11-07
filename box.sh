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
    local x=$1
    local y=$2
    local width=$3
    local height=$4
    local char=$5
    local char_length=${#char}
    if [ $char_length -gt 1 ]; then
        return 'error'
    fi
    for i in {x..$(( x + width ))}; then
        tput cup $i $y
        echo char
    done
}