## The game field
#0 = empty & not hit
#1 = empty & hit
#2 = ship & not hit
#3 = ship & hit

board_size = 10
board_marks <- c(" ", "X", " ", "O")
board <- matrix(0, nrow=board_size, ncol=board_size)

play_round <- function(x, y) {
  update_board(x, y)
  show_board()
}

update_board <- function(x, y) {
  if (board[x, y] %% 2 == 1) {
    print("You already hit that field!")
  } else {
    board[x, y] <<- board[x, y] + 1
  }
}

show_board <- function() {
  separate_line <- paste0("    |", paste0(rep(" - ", board_size), collapse = "|"), "|")
  cat(paste0("      ", paste0(1:board_size, collapse="   "), "  "), "\n", "\n")
  cat(separate_line, "\n")
  for (line in 1:board_size) {
    cat(paste0(sprintf("%2i", line), "  | ", paste0(board_marks[board[line, ] + 1], collapse = " | "), " | "), "\n")
    cat(separate_line, "\n")
  }
}

run_test <- function() {
  board[3, 6:9] <<- 2 ## set a demo ship
  play_round(1, 1)
  play_round(1, 1)
  play_round(7, 5)
  play_round(3, 7)
  play_round(4, 7)
  play_round(3, 8)
}

run_test()

