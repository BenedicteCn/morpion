class Board
  attr_accessor :boardgame

  def initialize #on crée la structure du board
    @boardgame = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
  end

  def put_token(symbol, i)
    @boardgame[i] = symbol
    show_board
  end

  def victory?
    if #toutes les cases sont remplies
      if a1 = a2 = a3 || b1 = b2 = b3 || c1 = c2 = c3 || a1 = b1 = c1 || a2 = b2 = c2 || a3 = b3 = c3 || a1 = b2 = c3 || a3 = b2 = c1
        puts "Bravo le joueur a gagné !"
      else
        puts "Match nul !"
      end
    else #si elles sont pas remplies, le jeu continue
    end
  end

  def show_board
      puts "   1   2   3 "
      puts "A  #{@boardgame[:a1]} | #{@boardgame[:a2]} | #{@boardgame[:a3]} "
      puts "  ---+---+---"
      puts "B  #{@boardgame[:b1]} | #{@boardgame[:b2]} | #{@boardgame[:b3]} "
      puts "  ---+---+---"
      puts "C  #{@boardgame[:c1]} | #{@boardgame[:c2]} | #{@boardgame[:c3]} "
  end
end
