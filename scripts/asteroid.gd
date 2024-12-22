extends Area2D

var game_manager = null

# Asteroid speed
var speed = 200
var velocity : Vector2 = Vector2.ZERO

func _ready() -> void:
	game_manager = get_node("/root/Game")

func _process(delta):
	position += velocity * delta  # Move the asteroid based on velocity
	if position.x < 0 or position.x > get_viewport().size.x or position.y < 0 or position.y > get_viewport().size.y:
		queue_free()  # Remove the asteroid when it goes off-screen

func _on_body_entered(body):
	if body.name == "Player":  # If the player collides with the asteroid
		game_manager.game_over()  # Call the game over logic on the player
		queue_free()  # Remove the asteroid
