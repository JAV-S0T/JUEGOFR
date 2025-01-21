extends Node2D


var change_créditos = load("res://Menu/Créditos/Créditos.tscn")

func _on_créditos_pressed():
	get_tree().change_scene_to_packed(change_créditos)
	pass # Replace with function body.

var change_Juego = load("res://Menu/Juego/Juego.tscn")

func _on_juego_pressed():
	get_tree().change_scene_to_packed(change_Juego)
	pass # Replace with function body.

var change_Instrucciones = load("res://Menu/Instrucciones/Instrucciones.tscn")

func _on_instrucciones_pressed():
	get_tree().change_scene_to_packed(change_Instrucciones)
	pass # Replace with function body.
