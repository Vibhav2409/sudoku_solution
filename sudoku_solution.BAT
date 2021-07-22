def sudoku_solution(sudoku_board):

    for i in range(len(sudoku_board)):
        hadd = 0
        vadd = 0
        for j in range(len(sudoku_board)):
            #vertical check
            vadd += sudoku_board[j][i]
            #horizontal check
            hadd += sudoku_board[i][j]
            #numbers check
            if sudoku_board[i][j] < 1 or sudoku_board[i][j] > 9:
                print(1)
                return False
        if vadd != 45 or hadd != 45:
            print (2)
            print (vadd)
            print (hadd)
            return False
    for i in range(3):
        for j in range(3):
            gadd = 0
            for k in range(3):
                for l in range(3):
                    gadd += sudoku_board[i*3+k][j*3+l]
                    if sudoku_board[i][j] < 1 or sudoku_board[i][j] > 9:
                        print (3)
                        return False
            if gadd != 45:
                return False
    return True 