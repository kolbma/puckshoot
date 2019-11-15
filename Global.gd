extends Node

const AIRes = preload("res://puckshootai.gdns")

onready var AI = AIRes.new()

func hit_l():
	AI.hits_left += 1

func hit_r():
	AI.hits_right += 1

func hit_points_l(p):
	AI.hits_left += p
	AI.hits_right -= p

func hit_points_r(p):
	AI.hits_right += p
	AI.hits_left -= p

func hits_l():
	return AI.hits_left

func hits_r():
	return AI.hits_right

func window_resize():
	var ws = OS.window_size
	
#func _ready():
#	get_tree().connect("screen_resized", self, "on_screen_resized")

#func on_screen_resized():
#	print_debug("window size: ", OS.window_size)
#	var board = get_child(0)
#	var board = get_tree().root.get("Board")
	
