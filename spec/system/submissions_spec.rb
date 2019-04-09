require "rails_helper"

RSpec.describe "Submissions API", :type => :system do
    it "enables me to create submissios" do
        visit "/submissions"
    
        fill_in "First name", :with => "Elliott"
        fill_in "Last name", :with => "Reed"
        fill_in "Email", :with => "er@example.com"
        fill_in "Slogan", :with => "With great power comes great responsibility"
        click_button "Submit"
    
        expect(page).to have_text("Submission successful")
      end
    
end