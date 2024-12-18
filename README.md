# Godot Tonemap Comparison
Tonemap comparison between Godot and Blender.

# Usage
1) Browse the [sdr_renders](https://github.com/allenwp/godot-tonemap-comparison/tree/main/sdr_renders) folder to find the tonemap renders that you are interested in. Tap the "View raw" or "Raw" link on the `.webp` file. [Example](https://github.com/allenwp/godot-tonemap-comparison/blob/main/sdr_renders/godot/Max1Saturation100/godot_Linear_w1.0_Max1Saturation100.webp).
2) Open multiple of these raw file links in your web browser and tab back and forth to see the differences.
3) Alternatively, you can download the raw files and use an image comparison tool, such as a "difference" blend mode in an image editor or an online tool like [Diffchecker](https://www.diffchecker.com/image-compare/) or [ImageTools.org](https://www.imagetools.org/compare).

# File Name Conventions
File paths are:

`[godot|blender-4.2.2-lts]/[HDR image name]/[godot|blender]_[tonemap name]_[godot white paramter]_[HDR image name].webp`

Example:

`godot/Max1Saturation100/godot_Linear_w1.0_Max1Saturation100.webp`

## Max...Saturation... HDR Files
These files were created with Photoshop to show a spread of all RGB colours at different saturation levels. All of these start with values at 0.0 on the left and go up to a maximum value, such as 1.0 or 18.0, on the right of the image.

`Max1Saturation100`: Values from 0.0 to 1.0. Colours at 100% saturation.

`Max18Saturation50`: Values from 0.0 to 18.0. Colours at 50% saturation.

# Example Comparison of Blender and Godot
| File & Tonemaps | Blender | Godot
| --- | --- | ---
| B002C016_220405_B09C.00796<br>**Standard vs. Linear_w1.0** | [blender_Standard_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/B002C016_220405_B09C.00796/blender_Standard_B002C016_220405_B09C.00796.webp) | [godot_Linear_w1.0_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/B002C016_220405_B09C.00796/godot_Linear_w1.0_B002C016_220405_B09C.00796.webp)
| B002C016_220405_B09C.00796<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/B002C016_220405_B09C.00796/blender_Filmic_B002C016_220405_B09C.00796.webp) | [godot_Filmic_w6.0_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/B002C016_220405_B09C.00796/godot_Filmic_w6.0_B002C016_220405_B09C.00796.webp)
| B002C016_220405_B09C.00796<br>**AgX vs. AgX_w1.0** | [blender_AgX_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/B002C016_220405_B09C.00796/blender_AgX_B002C016_220405_B09C.00796.webp) | [godot_AgX_w1.0_B002C016_220405_B09C.00796](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/B002C016_220405_B09C.00796/godot_AgX_w1.0_B002C016_220405_B09C.00796.webp)
| Matas_Alexa_Mini_sample_BT709<br>**Standard vs. Linear_w1.0** | [blender_Standard_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Matas_Alexa_Mini_sample_BT709/blender_Standard_Matas_Alexa_Mini_sample_BT709.webp) | [godot_Linear_w1.0_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Matas_Alexa_Mini_sample_BT709/godot_Linear_w1.0_Matas_Alexa_Mini_sample_BT709.webp)
| Matas_Alexa_Mini_sample_BT709<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Matas_Alexa_Mini_sample_BT709/blender_Filmic_Matas_Alexa_Mini_sample_BT709.webp) | [godot_Filmic_w6.0_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Matas_Alexa_Mini_sample_BT709/godot_Filmic_w6.0_Matas_Alexa_Mini_sample_BT709.webp)
| Matas_Alexa_Mini_sample_BT709<br>**AgX vs. AgX_w1.0** | [blender_AgX_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Matas_Alexa_Mini_sample_BT709/blender_AgX_Matas_Alexa_Mini_sample_BT709.webp) | [godot_AgX_w1.0_Matas_Alexa_Mini_sample_BT709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Matas_Alexa_Mini_sample_BT709/godot_AgX_w1.0_Matas_Alexa_Mini_sample_BT709.webp)
| red_xmas_rec709<br>**Standard vs. Linear_w1.0** | [blender_Standard_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/red_xmas_rec709/blender_Standard_red_xmas_rec709.webp) | [godot_Linear_w1.0_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/red_xmas_rec709/godot_Linear_w1.0_red_xmas_rec709.webp)
| red_xmas_rec709<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/red_xmas_rec709/blender_Filmic_red_xmas_rec709.webp) | [godot_Filmic_w6.0_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/red_xmas_rec709/godot_Filmic_w6.0_red_xmas_rec709.webp)
| red_xmas_rec709<br>**AgX vs. AgX_w1.0** | [blender_AgX_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/red_xmas_rec709/blender_AgX_red_xmas_rec709.webp) | [godot_AgX_w1.0_red_xmas_rec709](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/red_xmas_rec709/godot_AgX_w1.0_red_xmas_rec709.webp)
| Max1Saturation100<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation100/blender_Standard_Max1Saturation100.webp) | [godot_Linear_w1.0_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation100/godot_Linear_w1.0_Max1Saturation100.webp)
| Max1Saturation100<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation100/blender_Filmic_Max1Saturation100.webp) | [godot_Filmic_w6.0_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation100/godot_Filmic_w6.0_Max1Saturation100.webp)
| Max1Saturation100<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation100/blender_AgX_Max1Saturation100.webp) | [godot_AgX_w1.0_Max1Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation100/godot_AgX_w1.0_Max1Saturation100.webp)
| Max1Saturation50<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation50/blender_Standard_Max1Saturation50.webp) | [godot_Linear_w1.0_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation50/godot_Linear_w1.0_Max1Saturation50.webp)
| Max1Saturation50<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation50/blender_Filmic_Max1Saturation50.webp) | [godot_Filmic_w6.0_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation50/godot_Filmic_w6.0_Max1Saturation50.webp)
| Max1Saturation50<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation50/blender_AgX_Max1Saturation50.webp) | [godot_AgX_w1.0_Max1Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation50/godot_AgX_w1.0_Max1Saturation50.webp)
| Max1Saturation0<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation0/blender_Standard_Max1Saturation0.webp) | [godot_Linear_w1.0_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation0/godot_Linear_w1.0_Max1Saturation0.webp)
| Max1Saturation0<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation0/blender_Filmic_Max1Saturation0.webp) | [godot_Filmic_w6.0_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation0/godot_Filmic_w6.0_Max1Saturation0.webp)
| Max1Saturation0<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max1Saturation0/blender_AgX_Max1Saturation0.webp) | [godot_AgX_w1.0_Max1Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max1Saturation0/godot_AgX_w1.0_Max1Saturation0.webp)
| Max18Saturation100<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation100/blender_Standard_Max18Saturation100.webp) | [godot_Linear_w1.0_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation100/godot_Linear_w1.0_Max18Saturation100.webp)
| Max18Saturation100<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation100/blender_Filmic_Max18Saturation100.webp) | [godot_Filmic_w6.0_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation100/godot_Filmic_w6.0_Max18Saturation100.webp)
| Max18Saturation100<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation100/blender_AgX_Max18Saturation100.webp) | [godot_AgX_w1.0_Max18Saturation100](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation100/godot_AgX_w1.0_Max18Saturation100.webp)
| Max18Saturation50<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation50/blender_Standard_Max18Saturation50.webp) | [godot_Linear_w1.0_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation50/godot_Linear_w1.0_Max18Saturation50.webp)
| Max18Saturation50<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation50/blender_Filmic_Max18Saturation50.webp) | [godot_Filmic_w6.0_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation50/godot_Filmic_w6.0_Max18Saturation50.webp)
| Max18Saturation50<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation50/blender_AgX_Max18Saturation50.webp) | [godot_AgX_w1.0_Max18Saturation50](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation50/godot_AgX_w1.0_Max18Saturation50.webp)
| Max18Saturation0<br>**Standard vs. Linear_w1.0** | [blender_Standard_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation0/blender_Standard_Max18Saturation0.webp) | [godot_Linear_w1.0_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation0/godot_Linear_w1.0_Max18Saturation0.webp)
| Max18Saturation0<br>**Filmic vs. Filmic_w6.0** | [blender_Filmic_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation0/blender_Filmic_Max18Saturation0.webp) | [godot_Filmic_w6.0_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation0/godot_Filmic_w6.0_Max18Saturation0.webp)
| Max18Saturation0<br>**AgX vs. AgX_w1.0** | [blender_AgX_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/blender-4.2.2-lts/Max18Saturation0/blender_AgX_Max18Saturation0.webp) | [godot_AgX_w1.0_Max18Saturation0](https://github.com/allenwp/godot-tonemap-comparison/raw/refs/heads/main/sdr_renders/godot/Max18Saturation0/godot_AgX_w1.0_Max18Saturation0.webp)

# Generating SDR Renders in Godot
Simply run the main scene in the Godot project to generate SDR renders. A markdown table will also be output in the log with links to the images in this repo.

## Adding an HDR Texture
HDR textures should be **2048x2048**. You can change this by changing the project window's viewport size.
- Add the texture to the `textures` array of the root `Node3D` in `unshaded-texture.tscn`.

## Adding a Tonemapper
- Edit `image_saver.gd` and add the new tonemapper to the `tonemappers` dictionary.
- The dictionary key is the tonemapper
- If the "blender" element of the array is empty, it will not be included in the generated markdown table.

# Generating SDR Renders in Blender
The [Blender scene](https://github.com/allenwp/godot-tonemap-comparison/blob/main/blender/blender-tonemap.blend) is set up to allow easy saving of SDR renders using the Compositing feature. The scene is set up to render to **2048x2048**, matching the Godot project.

1) Open the [Blender scene](https://github.com/allenwp/godot-tonemap-comparison/blob/main/blender/blender-tonemap.blend).
2) Go to the "Compositing" tab.
3) Set the texture path to be your desired HDR texture.
4) Choose Render - Render Image (F12)
5) Choose Image - Save (Alt S)
6) Change "Color Management" on the right side to "Override"
7) Choose the View (tonemap) and Look
8) Save your image as a .webp

# Why `webp` instead of `png`
`png` files generated by Godot's [save_png](https://docs.godotengine.org/en/stable/classes/class_image.html#class-image-method-save-png) function do not render correctly in Firefox because Firefox will use an incorrect colour profile instead of sRGB. This does not happen with `webp`, so uncompressed `webp` files have been used instead.
