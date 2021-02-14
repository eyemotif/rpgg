extends FieldObject
class_name Tile

var _options: Dictionary

func is_solid() -> bool:
	return _options.has('solid') and _options['solid']

func _init(coords: Vector2, options: Dictionary = {}).(coords) -> void:
	_options = options
