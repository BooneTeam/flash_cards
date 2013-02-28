require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do
    
    it "should have content 'Flashy Programming'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
     visit '/home'
     page.should have_content('Flashy Programming')
    end
    it "should have link to sign in"
    visit '/home'
    page.should have_link('sign in')
end

  end
end
