require 'spec_helper'

describe ApplicationHelper do

  describe "#full_title" do

    it "Should pre append 'Ruby on Rails Tutorial Sample App | ' to the title" do
      full_title("title").should eq "Ruby on Rails Tutorial Sample App | title"
    end

    it "Should give 'Ruby on Rails Tutorial Sample App' as title if no title has been specified" do
      full_title("").should eq "Ruby on Rails Tutorial Sample App"
    end
  end

end

