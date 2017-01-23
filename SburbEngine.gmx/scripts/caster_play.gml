if(is_string(argument0)){
audio_play_sound(asset_get_index(string_copy(argument0,0,string_length(argument0)-4)),10,false);
audio_sound_gain(asset_get_index(string_copy(argument0,0,string_length(argument0)-4)),argument1,0);
audio_sound_pitch(asset_get_index(string_copy(argument0,0,string_length(argument0)-4)),argument2);
}
