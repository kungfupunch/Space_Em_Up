///(snd)
var snd = argument[irandom(argument_count-1)];
audio_play_sound(snd,1,false);
audio_sound_gain(snd,global.volume,0);
