class ShortUrl < ApplicationRecord
    before_create :generate_short_url

    private

    def generate_short_url 
        loop do
            self.shortened_url = SecureRandom.urlsafe_base64(4)
            break unless self.class.exists?(shortened_url: shortened_url)
        end
    end
end
