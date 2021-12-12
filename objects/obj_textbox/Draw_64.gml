/// @description Insert description here
// You can write your code in this editor

var _camW = camera_get_view_width(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);
var _boxX = _camW - txtbox_w / 2;
var _boxY = _camH - txtbox_h / 2;


draw_rectangle(_boxX - txtbox_border, _boxY - txtbox_border, _boxX + txtbox_w + txtbox_border, _boxY + txtbox_h + txtbox_border, false);
draw_set_color(c_black);
draw_rectangle(_boxX, _boxY, _boxX + txtbox_w, _boxY + txtbox_h, false);
draw_set_color(c_white);
draw_text(_boxX + offset,_boxY + offset, display_name);
draw_text_ext(_boxX + offset, _boxY + offset * 2 + string_height(display_name), display_str, offset, txtbox_w - offset * 2);