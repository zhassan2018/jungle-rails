require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validation' do


  	it 'save properly' do
  		
  		@user = User.create(
  			first_name: 'first_name',
  			last_name: 'last_name',
  			email: 'email@email.com',
  			password: 'password',
  			password_confirmation: 'password'

  			)
  		expect(@user).to be_present
  	end

  	it 'first name should be present' do

  			@user = User.create(
  				first_name: nil,
  				last_name: 'last_name',
  				email: 'email@email.com',
  				password: 'password',
  				password_confirmation: 'password'

  				)
  			expect(@user.errors.full_messages).to include("First name can't be blank")
  		end

	it 'last name should be present' do

			@user = User.create(
				first_name: 'first_name',
				last_name: nil,
				email: 'email@email.com',
				password: 'password',
				password_confirmation: 'password'

				)
			expect(@user.errors.full_messages).to include("Last name can't be blank")
		end


	it 'email should be present' do

			@user = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: nil,
				password: 'password',
				password_confirmation: 'password'

				)
			expect(@user.errors.full_messages).to include("email can't be blank")
		end

	it 'email should be present' do

			@user = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: nil,
				password: 'password',
				password_confirmation: 'password'

				)
			expect(@user.errors.full_messages).to include("email can't be blank")
		end

	it 'password should match' do

			@user = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: 'email@email.com',
				password: 'password',
				password_confirmation: 'not password'

				)
			expect(@user.errors.full_messages).to include("Password doesn't match Password confirmation")
			end

	it 'password should match' do

			@user = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: 'email@email.com',
				password: 'password',
				password_confirmation: 'not password'

				)
			expect(@user.errors.full_messages).to include("Password doesn't match Password confirmation")
			end

	it 'Must have a unique email' do

			@user = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: 'email@email.com',
				password: 'password',
				password_confirmation: 'not password'

				)
			@user2 = User.create(
				first_name: 'first_name',
				last_name: 'last_name',
				email: 'EMAIL@email.com',
				password: 'password',
				password_confirmation: 'not password'

				)

			expect(@user2.errors.full_messages).to include("Email is already taken")
			end










end
