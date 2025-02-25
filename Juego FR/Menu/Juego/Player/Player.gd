extends CharacterBody2D

func _ready():
	$Player.play("idle")
func _process(delta):
	
	
	pass


func _on_atacar_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.



func _on_atacar_pressed():
	$"/root/Global/BotonClick".play()
	$Player.play("attack")
	
	pass # Replace with function body.


func _on_player_animation_looped():
	$Player.play("idle")
	pass # Replace with function body.
