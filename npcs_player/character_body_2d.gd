extends CharacterBody2D
@onready var jump_sfx: AudioStreamPlayer = $jumpSFX

# const aka constant/consistent is something you cannot change later on. it compiles and is hard coded
const SPEED = 250.0
const JUMP_VELOCITY = -600.0 # this assumes that gravity in the project settings is changed from 980 to 2500
# you could write a new const with a diff value for an upgraded jump when character gets power up, you'd use a bool basically
# drag sprite node (found under character body node) onto the script, but right before releasing, hold down ctrl
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D # $ is not a placeholder like in bash scripting
# above is a trimmed down function for _ready

# no need to make this function non-void because the engine calls this function and does not care about its result (its return value)
func _physics_process(delta: float) -> void: # Void - This function doesn’t need to give any answers back
	# animations
	if velocity.x > 1 or velocity.x < -1:
		animated_sprite_2d.animation = "walking"  # correct usage to assign animation name
	else:
		animated_sprite_2d.animation = "default"  # default animation

	# Add the gravity.
	if not is_on_floor():
		velocity.y += get_gravity().y * delta  # Access only the Y component of gravity
		animated_sprite_2d.animation = "jumping"

	# Handle jump.
	# you just pressed up and if character is on the floor, then it jumps
	# ui_accept is a hard coded name for a keybind, check this in project > project settings
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jump_sfx.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 14) # higher the latter number, the less slippery the player is

	move_and_slide()
	# protagonist player turns left
	var turnsLeft = velocity.x < 0
	animated_sprite_2d.flip_h = turnsLeft


func _on_coin_7_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
