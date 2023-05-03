class UrlToken < ApplicationRecord
  has_many :url_visits

  validates :token, :url, uniqueness: true

  before_create :generate_token

  def to_param
    token
  end

  private

  def generate_token
    loop do
      self.token = SecureRandom.alphanumeric
      break unless self.class.find_by_token(token)
    end
  end
end
