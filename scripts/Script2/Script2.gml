function bound(index, bounds)
{
    if(index < bounds[0] or index > bounds[1] + 0.99)
    {
        return bounds[0];
    }
    
    return index;
}