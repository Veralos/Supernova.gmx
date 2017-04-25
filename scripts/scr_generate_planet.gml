var planet_x = argument0;
var planet_y = argument1;
var hard_chance = argument2;

var planet = instance_create(planet_x, planet_y, obj_planet);

planet.color = make_color_hsv(random(255), 128 + random(64), 255);
planet.music = ds_list_find_value(music_list, irandom(ds_list_size(music_list) - 1));
planet.name = scr_generate_name();
planet.room_list = ds_list_create();

var land_room = ds_list_find_value(land_list, irandom(ds_list_size(land_list) - 1));
ds_list_add(planet.room_list, land_room);

var rooms = 2 + irandom(3);
for (var i = 0; i < rooms; i++) {
    var room_list = easy_list;
    if (random(1) < hard_chance)
        room_list = hard_list;
    do {
        var easy_room = ds_list_find_value(room_list, irandom(ds_list_size(room_list) - 1));
    }
    until (ds_list_find_index(planet.room_list, easy_room) == -1)
    ds_list_add(planet.room_list, easy_room);
} 

planet.radius = 16 + 4 * rooms;

return rooms + 1;
