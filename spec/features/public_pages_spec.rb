require 'rails_helper'

describe 'home page' do

  context 'Visiting the home page' do

    it 'shows the home page' do
      visit "http://www.example.com/"
      expect(page).to have_content "Kula"
    end


  end


end