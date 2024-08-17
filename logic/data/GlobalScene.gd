extends CanvasLayer
class_name MyGlobalScene
@onready var E_texture_rect: TextureRect = $TextureRect
@onready var atlas_text: AtlasTexture = E_texture_rect.texture
@onready var is_E_anim_playable : bool = false
@onready var fpsDisplay: Label = $MarginContainer/FPS
@onready var chronometer: Label = $MarginContainer/cronos
@onready var initTime : float;
func play_press_E_animation(playVel := 0.15) -> bool:
	if is_E_anim_playable:	
		E_texture_rect.set_visible(true)
		atlas_text.region.position = Vector2(0, 0)
		if is_E_anim_playable: await get_tree().create_timer(playVel).timeout
		else: 
			E_texture_rect.set_visible(false)
			return true 
		atlas_text.region.position = Vector2(128, 0)
		if is_E_anim_playable: await get_tree().create_timer(playVel).timeout
		else: 
			E_texture_rect.set_visible(false)
			return true 
		atlas_text.region.position = Vector2(0, 128)
		if is_E_anim_playable: await get_tree().create_timer(playVel).timeout
		else: 
			E_texture_rect.set_visible(false)
			return true 
		atlas_text.region.position = Vector2(128, 128)
		if is_E_anim_playable: await get_tree().create_timer(playVel).timeout
		else:
			E_texture_rect.set_visible(false) 
			return true 
		play_press_E_animation()
	else: 
		E_texture_rect.set_visible(false)
	return true

func _process(delta):
	var fpsStr: String = str(Engine.get_frames_per_second()) if SGlobal.config[SGlobal.SHOWFPS] else ""
	fpsDisplay.text = fpsStr
	var cronTime = Time.get_time_string_from_unix_time(Time.get_unix_time_from_system()-initTime)
	chronometer.text = cronTime
