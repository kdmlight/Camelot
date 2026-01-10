function set_animation(state)
{
    new_animation = variable_struct_get(animations, state);
    animation_frames = new_animation.frames
}


move_speed = 3;
animations = {
  

set_animation("idling");

show_debug_message(animation_frames);