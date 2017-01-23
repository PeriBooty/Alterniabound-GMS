if(is_string(argument0))
return audio_is_playing(asset_get_index(string_copy(argument0,0,string_length(argument0)-4))) else
return false;
