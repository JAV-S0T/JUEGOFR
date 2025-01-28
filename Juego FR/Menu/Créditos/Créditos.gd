extends Node2D

var change_volver2 = load("res://Menu/Menu_Principal.tscn")

func _on_volver_2_pressed():
	get_tree().change_scene_to_packed(change_volver2)
	$"/root/Global/BotonClick".play()
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.
