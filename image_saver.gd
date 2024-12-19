extends Node3D

@export var material: BaseMaterial3D
@export var environment: WorldEnvironment
@export var textures: Array[Texture2D]
var tonemappers: Dictionary = { # Array: white parameter, Tonemap name, Blender equivalent name
		Environment.TONE_MAPPER_AGX_BLENDER_NO_GUARDRAIL_NO_HUE_ROTATION: [1.0, "AgX-rewrite-no-hue-rot", "AgX"],
}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("| File & Tonemaps | Blender | Godot AgX Rewrite | Godot AgX Rewrite (no hue rotation)\n| --- | --- | --- | ---")
	for texture in textures:
		for tonemapper_index in tonemappers:
			var white: float = tonemappers[tonemapper_index][0]
			var tonemapper_str: String = tonemappers[tonemapper_index][1]
			var blender: String = tonemappers[tonemapper_index][2]
			material.albedo_texture = texture
			environment.environment.tonemap_mode = tonemapper_index
			environment.environment.tonemap_white = white
			await get_tree().create_timer(0).timeout
			await RenderingServer.frame_post_draw
			var texture_name: String = texture.resource_path.get_basename().get_file()
			var folder_path = "user://sdr_renders/godot/%s" % texture_name
			DirAccess.make_dir_recursive_absolute(folder_path)
			_save_image("%s/godot_%s_w%.1f_%s" % [folder_path, tonemapper_str, white, texture_name])
			if blender != "":
				var table_line: String = "| %s" % [texture_name]
				table_line += " | [blender_%s]" % [blender]
				table_line += "(https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/%s/blender_%s_%s.webp)" % [texture_name, blender, texture_name]
				table_line += " | [godot AgX Rewrite]"
				table_line += "(https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/%s/godot_%s_w%.1f_%s.webp)" % [texture_name, tonemapper_str, white, texture_name]
				table_line += " | [godot AgX Rewrite (no hue rotation)]"
				table_line += "(https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/%s/godot_AgX-rewrite-no-hue-rot_w%.1f_%s.webp)" % [texture_name, white, texture_name]
				print(table_line)

	OS.shell_show_in_file_manager(ProjectSettings.globalize_path("user://"))


func _save_image(path: String) -> void:
	# PNG does not save color profile in a way that Firefox plays nicely with
	# get_tree().root.get_viewport().get_texture().get_image().save_png(path + ".png")
	# Save lossless webp instead:
	get_tree().root.get_viewport().get_texture().get_image().save_webp(path + ".webp")
