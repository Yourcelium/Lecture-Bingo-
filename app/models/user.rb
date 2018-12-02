# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :session_token, :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_token

    def self.find_by_cred(username, password)
        user = User.find_by(username: username)
        if user && user.valid_password?(password)
            user
        else
            nil
        end
    end


    def password=(password)
        digest = BCrypt::Password.create(password)
        self.password_digest = digest
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
    end

    def ensure_token
        self.session_token ||= SecureRandom.urlsafe_base64
    end

    private
    def valid_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end
end
