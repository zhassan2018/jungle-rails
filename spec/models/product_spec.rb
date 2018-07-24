require 'rails_helper'

RSpec.describe Product, type: :model do
	describe 'Validations' do
		#validtion tests/examples here

			it 'save properly' do
				@category = Category.create(name: 'category_name')
				@product = Product.create(
					name: 'product_name',
					price: 1,
					quantity: 1,
					category: @category
					)
				expect(@product).to be_present
			end

			it 'Valid price' do
				@category = Category.create( name: 'category_name')
				@product = Product.create(
					name: 'Product name',
					quantity: 1,
					price: nil,
					category: @category
					)
				expect(@product.errors.full_messages).to include("Price can't be blank")
			end

			it 'Valid quantity' do
				@category = Category.create( name: 'category_name')
				@product = Product.create(
					name: 'Product name',
					quantity: nil,
					price: 1,
					category: @category
					)
				expect(@product.errors.full_messages).to include("Quantity can't be blank")
			end

			it 'Valid category' do
				@category = Category.create( name: 'category_name')
				@product = Product.create(
					name: 'Product name',
					quantity: 1,
					price: 1,
					category: nil
					)
				expect(@product.errors.full_messages).to include("Category can't be blank")
			end
		end

	
 end
