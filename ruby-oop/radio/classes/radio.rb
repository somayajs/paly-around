class Radio
  attr_reader :volume
  attr_reader :freq
  attr_reader :band


  def initialize(band)
    @@band = band
  end

  def self.am
    Radio.new('am')
    puts @@band
  end
  def self.fm
    Radio.new('fm')
  end
end
