extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void: # Void because no need to make this function give back value, the engine doesn't care
	# animations goes here

	if :
		animated_sprite_2d.animation = "wake"
	else:
		animated_sprite_2d.animation = "sleeping"
		
	"""# if then animated_sprite_2d.animation = "default" """
"""	else:
		animated_sprite_2d.animation = "default" 
		"""
# 		animated_sprite_2d.animation = "sleep"

	# Add the gravity.
"""	if not is_on_floor():
		velocity.y += get_gravity().y * delta  # Access only the Y component of gravity
		animated_sprite_2d.animation =  """
