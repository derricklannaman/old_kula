describe 'Public-facing pages' do

  context 'when visiting the home page' do
    it 'shows the home page' do
      visit "http://www.example.com/"
      expect(page).to have_css('body.data-controller-home')
    end
  end

end