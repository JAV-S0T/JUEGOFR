extends Node2D

var change_volver1 = load("res://Menu/Menu_Principal.tscn")

func _on_volver_1_pressed():
	get_tree().change_scene_to_packed(change_volver1)
	pass # Replace with function body.
