/// @description Insert description here
// You can write your code in this editor


playerMovement(move_spd);
playerCollision(obj_wall);
playerCollision(obj_npc);
// TODO: Improve collision so it isn't running and identical script
// too many times

x += h_spd;
y += v_spd;

if (keyboard_check_pressed(vk_space)) {
	playerObjectInteract();
}