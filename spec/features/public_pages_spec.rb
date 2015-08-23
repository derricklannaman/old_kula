require 'rails_helper'
require 'pry'

describe 'Public-facing pages' do

  context 'when visiting the home page' do
    before(:example) do
      visit root_path
    end

    it 'shows the home page' do
      expect(page).to have_css('body.data-controller-index')
    end

    it 'has a navigation bar with links' do
      expect(page).to have_selector('nav')
    end

    it 'has a about nav link' do
      expect(page).to have_link('about')
    end

    it 'has a menu nav link' do
      expect(page).to have_link('menu')
    end

    it 'has a news nav link' do
      expect(page).to have_link('news')
    end

    it 'has a destination nav link' do
      expect(page).to have_link('destination')
    end

    it 'list featured menu items' do
      visit root_path

      menu_item_1 = Dish.create(name: "Oxtail",
                                description: "Awesome taste from the caribbean")
      menu_item_2 = Dish.create(name: "Jerk Chicken",
                                description: "Awesome taste from the caribbean")

      expect(page).to have_text('Oxtail')
      expect(page).to have_text(menu_item_2.name)
    end

  end

  context "when visiting the about page" do
    it 'shows the about page' do
      visit about_path
      expect(page).to have_css('body.data-controller-about')
    end

    it 'has the content About Us' do
      visit about_path
      expect(page).to have_content 'About Us'
    end
  end

end