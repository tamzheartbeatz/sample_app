require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('flyfreebird designs')
    end

    it "should not have a custom page title" do
      visit '/static_pages_index_path/home'
      expect(page).not_to jave_title('| Home')
    end
  end

  # describe "Help page" do

  #   it "should have the content 'Help'" do
  #     visit '/static_pages/help'
  #     page.should have_selector('h1', :text => 'Help')
  #   end

  #   it "should have the title 'Help'" do
  #     visit '/static_pages/help'
  #     page.should have_selector('title',
  #           :text => "Ruby on Rails Tutorial Sample App | Help")
  #   end
  # end

  describe "Resources page" do

    it "should have the content 'Resources'" do
      visit '/static_pages/resources'
      page.should have_selector('h1', :text => 'Resources')
    end

    it "should have the title 'Resources'" do
      visit '/static_pages/resources'
      page.should have_selector('title',
            :text => "flyfreebird designs | Resources")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
            :text => "flyfreebird designs | About Us")
    end
  end
end


#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
