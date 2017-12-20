Given("I access the bbc register page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
  bbc_sign_in_page.click_register_link
end

Given("I input correct day of birth") do
  bbc_sign_up_page.fill_in_day_field('7')
end

Given("I input correct month of birth") do
  bbc_sign_up_page.fill_in_month_field('March')
end

Given("I input correct year of birth") do
  bbc_sign_up_page.fill_in_year_field('1995')
end

When("I click continue") do
  bbc_sign_up_page.click_continue_button
end

Then("I should successfully move to registration details page") do
  bbc_sign_up_page.registration_email_field
end
