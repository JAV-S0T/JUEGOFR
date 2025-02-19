extends CharacterBody2D

func _ready():
	$AnimatedSprite2D.play("idle")
func _process(delta):
	
	
	pass


func _on_animated_sprite_2d_animation_finished():
	pass # Replace with function body.

func _on_atacar_mouse_entered():
	$"/root/Global/BotonEncima".play()
	pass # Replace with function body.



func _on_atacar_pressed():
	$"/root/Global/BotonClick".play()
	$Player/AnimatedSprite2D.stop()
	$Player/AnimatedSprite2D.play("attack")
	if $Player/AnimatedSprite2D.is_playing() == false:
		$Player/AnimatedSprite2D.play("idle")
	
	pass # Replace with function body.
