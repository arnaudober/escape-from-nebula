extends Node

@export var game_manager : Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(self.get_path())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func game_over():
	print("Game Over!") 
	get_tree().paused = true
