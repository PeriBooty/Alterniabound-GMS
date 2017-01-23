if(is_string(argument0))
return audio_sound_get_gain(asset_get_index(string_copy(argument0,0,string_length(argument0)-4)));
