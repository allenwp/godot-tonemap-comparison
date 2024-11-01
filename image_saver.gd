extends Node3D

@export var material: BaseMaterial3D
@export var environment: WorldEnvironment
@export var textures: Array[Texture2D]
var tonemappers: Dictionary = {
		Environment.TONE_MAPPER_LINEAR: [1.0, "Linear"],
		Environment.TONE_MAPPER_FILMIC: [16.0, "Filmic"],
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await RenderingServer.frame_post_draw

	for texture in textures:
		for tonemapper_index in tonemappers:
			var white: float = tonemappers[tonemapper_index][0]
			var tonemapper_str: String = tonemappers[tonemapper_index][1]
			material.albedo_texture = texture
			environment.environment.tonemap_mode = tonemapper_index
			environment.environment.tonemap_white = white
			await get_tree().create_timer(0).timeout
			_save_image("user://godot_%s_w%.1f_%s" % [tonemapper_str, white, texture.resource_path.get_basename().get_file()])

	OS.shell_show_in_file_manager(ProjectSettings.globalize_path("user://"))


func _save_image(path: String) -> void:
	# PNG does not save color profile in a way that Firefox plays nicely with
	# get_tree().root.get_viewport().get_texture().get_image().save_png(path + ".png")
	# Save lossless webp instead:
	get_tree().root.get_viewport().get_texture().get_image().save_webp(path + ".webp")
