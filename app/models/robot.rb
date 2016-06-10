class Robot < ActiveRecord::Base
  belongs_to :inventor
  validates_presence_of :name

  def greet
    self.friendly ? 'hello' : 'die human'
  end

  def self.generate_passphrase
    SecureRandom.hex(5)
  end
end
