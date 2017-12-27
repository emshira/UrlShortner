class UrlShortner < ApplicationRecord

before_save :generate_short_url, :sanitize_data

private
  def generate_short_url
    self.short_url = SecureRandom.urlsafe_base64(3)
  end

  def sanitize_data
    unless self.long_url.include?("https" || "http")
    self.long_url = "https://#{self.long_url}"
    end
  end
end
