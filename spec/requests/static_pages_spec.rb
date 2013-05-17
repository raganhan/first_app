require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

  	it "should have the right title" do
		  visit '/static_pages/home'
		  page.should have_selector('title',
		                    :text => "Rails Tutorial Twitter Clone | Home")
		end

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Twitter Clone')
    end
  end

  describe "Help page" do

  	it "should have the right title" do
		  visit '/static_pages/help'
		  page.should have_selector('title',
		                    :text => "Rails Tutorial Twitter Clone | Help")
		end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  end

  describe "About page" do

  	it "should have the right title" do
		  visit '/static_pages/about'
		  page.should have_selector('title',
		                    :text => "Rails Tutorial Twitter Clone | About")
		end

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  end

  describe "Contact page" do

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "Rails Tutorial Twitter Clone | Contact")
    end

    it "should have content information" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      page.should have_content('https://github.com/raganhan/railstutorial')
    end
  end
end
