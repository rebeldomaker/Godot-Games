extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _on_panel_entered(panel: Node2D) -> void:
	if (panel.name == "playerSheep"): 
		show()
	else:
		hide()
