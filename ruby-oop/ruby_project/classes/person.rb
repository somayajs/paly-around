class Person
  attr_accessor :first_name, :last_name
  def full_name
    "#{first_name} #{last_name}"
  end
  def intial_and_last
    "#{get_intial(first_name)} #{last_name}"
  end

  private
  def get_intial(name)
    name.chars.first + "."
  end
end
