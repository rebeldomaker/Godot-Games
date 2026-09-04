extends Node
# @onready var coinz: Label = $"../UI/Panel/coinz"
@onready var coinz: Label = %coinz
#@onready var coin_sfx: AudioStreamPlayer = $coinSFX

var coins = 0
func addCoin():
	coins += 1
	print(coins)
	coinz.text = "Coins: " + str(coins)
#	coin_sfx.play()


# func _on_body_entered(body: Node2D) -> void:
