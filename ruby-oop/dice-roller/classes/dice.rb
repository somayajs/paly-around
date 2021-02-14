class Dice
  attr_accessor :value
  def initialize
    roll
  end
  def roll
    # self.value = get_a_rondom_number
    @value = get_a_rondom_number
  end

  private
  def get_a_rondom_number
    rand(6) + 1
  end
end
