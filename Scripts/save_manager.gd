extends Node

@onready var main_menu : MainMenu

func _ready() -> void:
	main_menu = %MainMenu

func saveData() -> void:
	var data = SaveData.new()
	
	# Set all variables to save
	for board in main_menu.boards:
		data.boards.append(board)
	
	# Save
	ResourceSaver.save(data, "user://save_data.tres")
	print("saved")

func loadData() -> void:
	var data = ResourceLoader.load("user://save_data.tres") as SaveData
	
	# Load saved data
	main_menu.populateBoards(data.boards)
