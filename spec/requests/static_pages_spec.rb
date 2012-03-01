require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('h1', :text =>'Sample App')
    end
    
    it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('title', 
         :text => "#{base_title} | Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_selector('h1', :text =>'Help')
    end
    
    it "should have the title 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_selector('title', 
         :text => "#{base_title} | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      page.should have_selector('h1', :text =>'About Us')
    end
    
    it "should have the title 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      page.should have_selector('title', 
         :text => "#{base_title} | About Us")
    end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit contact_path
      page.should have_selector('h1', :text =>'Contact')
    end
    
    it "should have the title 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit contact_path
      page.should have_selector('title', 
         :text => "#{base_title} | Contact")
    end
  end
end
