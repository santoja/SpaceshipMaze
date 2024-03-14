extends Node2D
@onready var win_canvas: CanvasLayer = $WinCanvas
@onready var player: RigidBody2D = $Player

func _on_maze_body_exited(body: Node2D) -> void:
	get_tree().reload_current_scene()


func _on_finish_area_body_entered(body: Node2D) -> void:
	player.stop_moving()
	win_canvas.visible = true


func _on_reset_button_button_down() -> void:
	get_tree().reload_current_scene()


func _on_quit_button_button_down() -> void:
	get_tree().quit()
