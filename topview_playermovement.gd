extends CharacterBody2D

const SPEED = 75

@onready var anim = get_node("AnimationPlayer")

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		velocity.y = 0
		anim.play("rignt_run")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		velocity.y = 0
		anim.play("left_run")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		velocity.x = 0
		anim.play("down_run")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		velocity.x = 0
		anim.play("up_run")
	else:
		velocity.y = 0
		velocity.x = 0	
		anim.play("idle")
	
	move_and_slide() 
