require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do
    
    it "should have content 'Flashy Programming'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
     visit '/static_pages/home'
     page.should have_content('Flashy Programming')
    end
  end
end
