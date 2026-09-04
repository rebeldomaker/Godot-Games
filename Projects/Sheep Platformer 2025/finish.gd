extends Area2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _ready() -> void:
	# Ensure the collision is enabled
	collision_shape_2d.set_deferred("disabled", false)

func _on_body_entered(body: Node2D) -> void:
	print("Collision detected with:", body.name)
	
	# Check if the collided body is the player
	if body.name == "playerSheep":  # Replace with your player's node name
		print("Player detected! Attempting to change scene to level2.")

		# Check if the file exists
		if FileAccess.file_exists("res://level2.tscn"):
			# Attempt to change the scene
			var result = get_tree().change_scene_to_file("res://level2.tscn")
			
			# Check if scene change succeeded
			if result == OK:
				print("Scene change successful!")
			else:
				print("Failed to change scene. Error code:", result)
		else:
			print("Scene file does not exist at: res://level2.tscn")
