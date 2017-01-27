class Bomb
  attr_accessor :display_value
  def initialize(revealed = false)
    @bomb = :B
    if revealed
      @display_value = "B"
    else
      @display_value = " "
    end
  end



end
