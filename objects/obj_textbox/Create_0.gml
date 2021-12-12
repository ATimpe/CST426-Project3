/// @description Insert description here
// You can write your code in this editor

str = [];               //array of strings read from file
line = 0;               //current line in array
line_count = 0;         //total lines in file
//fname = "test.txt";   //name of file with dialogue
display_str = "";       //current dialogue text
display_name = "";      //name of character talking
txtbox_w = 20 * global.unit;
txtbox_h = 10 * global.unit;
txtbox_border = global.unit / 4;
offset = global.unit / 2;
global.game_state = GAMESTATE.TEXT;

event_perform(ev_other, ev_user0);