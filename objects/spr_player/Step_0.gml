var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var move_x = 0;
var move_y = 0;

/// RUCH + ANIMACJE
if (h != 0 || v != 0)
{
    var len = point_distance(0, 0, h, v);
    h /= len;
    v /= len;

    move_x = h * move_speed;
    move_y = v * move_speed;

    // WYBÓR KIERUNKU
    if (abs(h) > abs(v))
    {
        if (h > 0)
        {
            sprite_index = spr_player_walk_right;
            facing = "right";
        }
        else
        {
            sprite_index = spr_player_walk_left;
            facing = "left";
        }
    }
    else
    {
        if (v > 0)
        {
            sprite_index = spr_player_walk_down;
            facing = "down";
        }
        else
        {
            sprite_index = spr_player_walk_up;
            facing = "up";
        }
    }

    image_speed = 0.2;
}
else
{
    image_speed = 0;

    switch (facing)
    {
        case "down":  sprite_index = spr_player_idle_down;  break;
        case "up":    sprite_index = spr_player_idle_up;    break;
        case "left":  sprite_index = spr_player_idle_left;  break;
        case "right": sprite_index = spr_player_idle_right; break;
    }

    image_index = 0;
}

if (keyboard_check_pressed(vk_space))
{
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    _inst.image_angle = point_direction(0, 0, _hor, _ver)
    _inst.damage *= damage;
}




/// =======================
/// KOLIZJE TILEMAP
/// =======================

/// RUCH X
var can_move_x = true;
for (var i = 0; i < array_length(walls); i++)
{
    if (tilemap_get_at_pixel(walls[i], x + move_x, y) != 0)
    {
        can_move_x = false;
        break;
    }
}

if (can_move_x)
    x += move_x;

/// RUCH Y
var can_move_y = true;
for (var i = 0; i < array_length(walls); i++)
{
    if (tilemap_get_at_pixel(walls[i], x, y + move_y) != 0)
    {
        can_move_y = false;
        break;
    }
}

if (can_move_y)
    y += move_y;

