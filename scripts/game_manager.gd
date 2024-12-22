extends Node

@export var game_manager : Node

var game_over_label : Label = null

func game_over():
	get_tree().paused = true
	
	# Check if the game over label exists. If it does, remove it first.
	if game_over_label:
		game_over_label.queue_free()
	
	# Create a new Label node
	game_over_label = Label.new()
	
	# Set the text to "Game Over"
	game_over_label.text = "Game Over"
	game_over_label.add_theme_font_size_override("font_size", 50)
	
	# Set the label position to the center of the screen
	game_over_label.set_position(Vector2(520, 335))
	
	# Add the label to the scene
	add_child(game_over_label)
