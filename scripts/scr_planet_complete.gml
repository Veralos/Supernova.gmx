var planet = argument0;

if (planet.alarm[0] > 0)
     return false;

for (var i = 0; i < ds_list_size(planet.ore_list); i++) {
    if (!ds_list_find_value(planet.ore_list, i))
        return false;
}

return true;
