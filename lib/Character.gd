extends Movable
class_name Character

export(Texture) var up_texture
export(Texture) var left_texture
export(Texture) var right_texture
export(Texture) var down_texture
export(ggField.Direction) var direction
export(NodePath) var sprite_node

var freeze_sprite: bool = false

func get_texture() -> Texture:
	match direction:
		ggField.Direction.UP: return up_texture
		ggField.Direction.LEFT: return left_texture
		ggField.Direction.RIGHT: return right_texture
		ggField.Direction.DOWN: return down_texture
		_: return .get_texture()
func move(offset: Vector2) -> bool:
	if not .move(offset): return false
	if offset.y < 0: direction = ggField.Direction.UP
	elif offset.y > 0: direction = ggField.Direction.DOWN
	elif offset.x < 0: direction = ggField.Direction.LEFT
	elif offset.x > 0: direction = ggField.Direction.RIGHT
	_update_texture()
	return true

func _init(coords: Vector2).(coords) -> void: pass
func _ready() -> void: _update_texture()
func _update_texture():
	if sprite_node and not freeze_sprite:
		get_node(sprite_node).texture = get_texture()
