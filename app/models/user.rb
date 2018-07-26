class User < ActiveRecord::Base
	has_secure_password

	has_many :reviews

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :password, presence: true, confirmation: true, length:{minimum:6}
	validates :password_confirmation, presence: true 


	def self.authenticate_with_credentials(email, passsword)
		email.downcase!
		email.strip!
		@user = User.find_by_email(email)
		return false if @user == nil
		@user.authenticate(passsword)
	end

end


