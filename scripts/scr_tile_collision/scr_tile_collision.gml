function tile_collision(_x, _y)
{
    // sprawdzamy punkt środka maski kolizji gracza
    var px = _x;
    var py = _y;

    for (var i = 0; i < array_length(walls); i++)
    {
        if (walls[i] != noone)
        {
            if (tilemap_get_at_pixel(walls[i], px, py) != 0)
                return true;
        }
    }
    return false;
}
