class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length, @game_over, @seq = 1, false, []
  end

  def play

  end

  def take_turn

  end

  def show_sequence
    add_random_color
    seq.each {}
  end

  def require_sequence
    puts "return sequence in an array"
    arr = gets.chomp
    if arr == seq
      
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message
    puts "GAME OVER"
    reset_game
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
