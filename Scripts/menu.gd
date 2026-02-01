extends Control
@onready var options = $OptionsPanel
@onready var back = $OptionsPanel/Back
@onready var clickSFX = $Click
@onready var backSFX = $Back


func _ready() -> void:
	options.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	clickSFX.play()
	await clickSFX.finished
	get_tree().change_scene_to_file("res://Scenes/world.tscn")


func _on_options_pressed() -> void:
	clickSFX.play()
	await clickSFX.finished
	options.visible = true


func _on_exit_pressed() -> void:
	clickSFX.play()
	await clickSFX.finished
	get_tree().quit()


func _on_back_pressed() -> void:
	backSFX.play()
	await backSFX.finished
	options.visible = false
