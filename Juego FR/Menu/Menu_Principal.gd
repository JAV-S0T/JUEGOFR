extends Node2D


var change_créditos = load("res://Menu/Créditos/Créditos.tscn")

func _on_créditos_pressed():
	get_tree().change_scene_to_packed(change_créditos)
	$"/root/Global/BotonClick".play()
	pass # Replace with function body.

var change_Juego = load("res://Menu/Juego/Juego.tscn")

func _on_juego_pressed():
	get_tree().change_scene_to_packed(change_Juego)
	$"/root/Global/AudioStreamPlayer2D".stop()
	$"/root/Global/BotonClick".play()
	
	pass # Replace with function body.

var change_Instrucciones = load("res://Menu/Instrucciones/Instrucciones.tscn")

func _on_instrucciones_pressed():
	get_tree().change_scene_to_packed(change_Instrucciones)
	$"/root/Global/BotonClick".play()
	pass # Replace with function body.

func _on_juego_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.


func _on_instrucciones_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.



func _on_créditos_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.
