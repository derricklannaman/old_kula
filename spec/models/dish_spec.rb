require 'rails_helper'

RSpec.describe Dish, type: :model do

  describe 'when a dish is valid' do
    dish = Dish.new(name: 'chicken',
                    price: 10.00,
                    description: 'a tasty island dish. enjoy',
                    image: 'beach.png',
                    destination_id: 1)

    it 'is valid with a name' do
      expect(dish.name).to eq('chicken')
    end

    it 'is valid with a description' do
      expect(dish.description).to eq('a tasty island dish. enjoy')
    end

    it 'has an image' do
      expect(dish.image).to eq('beach.png')
    end

    it 'has a destination id' do
      expect(dish.destination_id).to eq(1)
    end

    it 'has a valid price' do
      expect(dish.price).to eq(10.00)
    end
  end

  describe 'is invalid' do
    let(:dish) { Dish.create!()}

    it 'when name, description, or price is nil' do
      expect(dish.name).to be_nil
      expect(dish.description).to be_nil
      expect(dish.price).to be_nil
    end
  end

end