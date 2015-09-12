require 'rails_helper'

# As the product owner, I want to add new dishes thru a form
# on the dashboard instead of the console


feature 'Admin Dashboard' do

  scenario 'add a dish' do

    # admin = User.create(is_admin: true)
    visit admin_dashboard_path

    expect {
      click_link 'add dish'
      fill_in 'name', with: 'Jerk Pork'


    }


    save_and_open_page





  end





end
