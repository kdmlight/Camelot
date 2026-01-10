function tile_collision(_x, _y)
{
    for (var i = 0; i < array_length(walls); i++)
    {
        if (tilemap_get_at_pixel(walls[i], _x, _y) != 0)
            return true;
    }
    return false;
}
