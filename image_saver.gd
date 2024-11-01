extends Node3D

@export var material: BaseMaterial3D
@export var environment: WorldEnvironment
@export var textures: Array[Texture2D]
var tonemappers: Dictionary = {
		Environment.TONE_MAPPER_LINEAR: [1.0, "Linear"],
		Environment.TONE_MAPPER_REINHARDT: [6.0, "Reinhard"],
		Environment.TONE_MAPPER_FILMIC: [6.0, "Filmic"],
		Environment.TONE_MAPPER_ACES: [6.0, "ACES"],
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for texture in textures:
		for tonemapper_index in tonemappers:
			var white: float = tonemappers[tonemapper_index][0]
			var tonemapper_str: String = tonemappers[tonemapper_index][1]
			material.albedo_texture = texture
			environment.environment.tonemap_mode = tonemapper_index
			environment.environment.tonemap_white = white
			await get_tree().create_timer(0).timeout
			await RenderingServer.frame_post_draw
			var texture_name: String = texture.resource_path.get_basename().get_file()
			var folder_path = "user://sdr_renders/%s" % texture_name
			DirAccess.make_dir_recursive_absolute(folder_path)
			_save_image("%s/godot_%s_w%.1f_%s" % [folder_path, tonemapper_str, white, texture_name])

	OS.shell_show_in_file_manager(ProjectSettings.globalize_path("user://"))


func _save_image(path: String) -> void:
	# PNG does not save color profile in a way that Firefox plays nicely with
	# get_tree().root.get_viewport().get_texture().get_image().save_png(path + ".png")
	# Save lossless webp instead:
	get_tree().root.get_viewport().get_texture().get_image().save_webp(path + ".webp")
