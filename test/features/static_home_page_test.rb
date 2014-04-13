require "test_helper"

class StaticHomePageTest < Capybara::Rails::TestCase
feature "StaticHomePage" do
  scenario "the test is sound" do
    visit root_path
    page.must_have_content "Rob"
    page.wont_have_content "fartz"
  end
end
