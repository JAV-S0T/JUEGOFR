extends Node2D

var change_volver3 = load("res://Menu/Menu_Principal.tscn")



func _on_volver_3_pressed():
	get_tree().change_scene_to_packed(change_volver3)
	$"/root/Global/AudioStreamPlayer2D".play()
	$"/root/Global/BotonClick".play()
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.
