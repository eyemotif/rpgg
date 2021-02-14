extends Movable
class_name Character

export(Texture) var up_texture
export(Texture) var left_texture
export(Texture) var right_texture
export(Texture) var down_texture

var direction: int setget ,get_direction

func get_direction() -> int:
	return direction
func get_texture() -> Texture:
	match direction:
		ggField.Direction.UP: return up_texture
		ggField.Direction.LEFT: return left_texture
		ggField.Direction.RIGHT: return right_texture
		ggField.Direction.DOWN: return down_texture
		_: return .get_texture()
