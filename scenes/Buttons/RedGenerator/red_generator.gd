extends TextureButton

@onready var escena = preload("res://scenes/Blocks/Red/BlockRed.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	_generate_block()

func _generate_block():
	var nueva_escena = escena.instantiate()
	add_child(nueva_escena)
