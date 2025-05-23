extends Camera3D

@export var target: Node3D
@export var smoothing_speed := 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if target:
		global_position = global_position.lerp(target.global_position, smoothing_speed * delta)
	pass
