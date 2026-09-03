extends CharacterBody2D
# this script simply initializes the sprite with its animations, loading the npc into the map
# that's it. that is all this entire script does. choose better naming conventions next time to avoid further confusion
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var panel: Panel = $"../CanvasLayer/Panel"

func _on_area2d_body_entered(body: Node2D) -> void:
# func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "playerSheep"):
		animated_sprite_2d.animation = "awake"
		panel.show()
	else:
		animated_sprite_2d.animation = "sleeping"
