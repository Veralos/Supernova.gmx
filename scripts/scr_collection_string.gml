var list = argument0;

var collected = 0;
var total = ds_list_size(list);

for (var i = 0; i < total; i++) {
    if (ds_list_find_value(list, i))
        collected++;
}

return string(collected) + "/" + string(total);
