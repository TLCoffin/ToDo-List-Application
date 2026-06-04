extends Control
class_name MainMenu

@export var boards : Array[Board]

func addBoard(name: String) -> void:
	var newBoard = Board.new(name)
	boards.append(newBoard)

func deleteBoard(index: int) -> Board:
	var removedBoard = boards.get(index)
	boards.remove_at(index)
	return removedBoard

func populateBoards(inBoards: Array[Board]) -> void:
	boards.clear()
	
	for board in inBoards:
		boards.append(board)

# TODO: Sort
#func sortBoards():
	#boards.sort_custom()
