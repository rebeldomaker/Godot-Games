extends Area2D
@onready var area_2d_2: Area2D = $"."
@onready var player_sheep: CharacterBody2D = $"../playerSheep"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	# dvigubai lygus zenklas yra klausimas "ar/jeigu kunas yra playerAvinelis, tada veiks funkcija. jeigu ne avinelis, tada nieko nedaryt, suo atveju"
	if (body.name == "playerSheep"):
		body.global_position = Vector2(28, -148)
		body.velocity = Vector2(0, 0)
