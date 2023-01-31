#                     12  11  10  9  8  7

# [13 - player2 store]                   [6 - player1 store]

#                      0   1   2  3  4  5

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @name1 = name1
    @name2 = name2
    place_stones
  end


  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i == 6 || i == 13
        next
      else
        4.times {cups[i] << :stone}
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  # def make_move(start_pos, current_player_name)
  #   cup_id = start_pos

  #   until @cups[start_pos].empty?
  #     cup_id += 1
  #     cup_id = 0 if cup_id > 13
  #   end

  # end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif !@cup[ending_cup_idx].empty?
      return ending_cup_idx
    else
      :switch
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    p1_count = @cups[6].count
    p2_count = @cups[13].count

    if p1_count == p2_count
      return :draw
    elsif p1_count > p2_count
      return @name1
    else
      return @name2
    end
  end
end
