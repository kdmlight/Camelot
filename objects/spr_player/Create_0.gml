move_speed = 4;

// ostatni kierunek, w który patrzy postać
facing = "down";

// animacja
image_speed = 0.2;

// pobranie ID tilemap kolizyjnych
walls = [
    layer_tilemap_get_id("Tiles_Walls"),
    layer_tilemap_get_id("Tiles_Walls2"),
    layer_tilemap_get_id("Tiles_Walls_Decor"),
    layer_tilemap_get_id("Tiles_Walls_Decor2")
];