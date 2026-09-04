extends Area2D
@onready var game_manager: Node = %gameManager
@onready var coin_sfx: AudioStreamPlayer = %coinSFX

func _on_body_entered(body: Node2D) -> void:
	# dvigubai lygus zenklas yra klausimas "ar/jeigu kunas yra playerAvinelis, tada veiks funkcija. jeigu ne avinelis, tada nieko nedaryt, suo atveju"
	if (body.name == "playerSheep"):
		game_manager.addCoin()
		queue_free() # the item is destroyed/collected
#		hide()
		coin_sfx.play()
#		coin_sfx.finished.connect(queue_free)
