@board = { a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " " }
symbol = "Y"
x = gets.chomp.downcase.to_sym
@board[x] = "#{symbol}"

puts "   1   2   3 "
puts "A  #{@board[:a1]} | #{@board[:a2]} | #{@board[:a3]} "
puts "  ---+---+---"
puts "B  #{@board[:b1]} | #{@board[:b2]} | #{@board[:b3]} "
puts "  ---+---+---"
puts "C  #{@board[:c1]} | #{@board[:c2]} | #{@board[:c3]} "
