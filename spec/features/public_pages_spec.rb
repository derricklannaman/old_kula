require 'pry'

describe 'Public-facing pages' do

  context 'when visiting the home page' do
    before do
      visit root_path
    end

    it 'shows the home page' do
      expect(page).to have_css('body.data-controller-home')
    end

    it 'has a navigation bar with links' do
      expect(page).to have_selector('nav')
    end

    it 'has navigation links' do
      expect(page).to have_link('about')
      expect(page).to have_link('menu')
      expect(page).to have_link('news')
    end
  end

end