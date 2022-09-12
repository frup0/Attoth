extends KinematicBody2D

onready var AnimatedSprite = $Player
export (int) var speed = 100

var velocity = Vector2()

onready var imagePlayer = get_node("Player")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		AnimatedSprite.play("Idle")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		AnimatedSprite.play("Idle")
	elif Input.is_action_pressed("ui_down"):
		velocity.y += 1
		AnimatedSprite.play("Up")
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		AnimatedSprite.play("Down")
	else:
		AnimatedSprite.play("default")
	velocity = velocity.normalized() * speed

# warning-ignore:unused_argument
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
	if velocity.x < 0:
		imagePlayer.flip_h = true
	elif velocity.x > 0:
		imagePlayer.flip_h = false
