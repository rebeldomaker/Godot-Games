extends AudioStreamPlayer
@onready var coin_sfx: AudioStreamPlayer = $"."
@onready var coinPickup: Node = $"../../coinz"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
"""func _on_body_entered(node: coinPickup) -> void:
	if (body.name == "playerSheep"): # coinPickup
		coin_sfx.play()
	else:
		pass"""
