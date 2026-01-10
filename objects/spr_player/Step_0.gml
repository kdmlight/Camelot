var pressed_left = keyboard_check(vk_left);
var pressed_right = keyboard_check(vk_right);
var pressed_up = keyboard_check(vk_up);
var pressed_down = keyboard_check(vk_down);

var xdirection = pressed_right - pressed_left;
x = x + (xdirection * move_speed);

var ydirection = pressed_down - pressed_up;
y = y + (ydirection * move_speed);

if(xdirection == -1) set_animation("left");
else if (xdirection == 1) set_animation("right");
else if (xdirection == 1) set_animation("up");
else if (xdirection == -1) set_animation("down");
else                       set_animation("idling");