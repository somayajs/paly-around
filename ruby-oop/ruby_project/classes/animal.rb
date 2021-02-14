class Animal
  attr_accessor :noise
  def initialize(options = {})
    self.noise = options[:noise] || "Grrr"
  end
  # alternative for
  # attr_reader :noise
  # just asentax sugar for
  # def noise
  #   @noise
  # end
  # attr_writer :noise
  ## just asentax sugar for
  # def noise=(value)
  #   @noise = value
  # end
end
