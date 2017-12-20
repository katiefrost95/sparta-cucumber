Given("I access the bbc register details page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
  bbc_sign_in_page.click_register_link
end

Given("I input correct date of birth") do
  bbc_sign_up_page.fill_in_day_field('7')
  bbc_sign_up_page.fill_in_month_field('March')
  bbc_sign_up_page.fill_in_year_field('1995')
  bbc_sign_up_page.click_continue_button
  bbc_sign_up_page.registration_email_field
end

Given("I input correct registration details") do
  bbc_reg_page.fill_in_email_field('katiefrost1234@hotmail.co.uk')
  bbc_reg_page.fill_in_password_field('katie1234!')
  bbc_reg_page.fill_in_postcode_field('cr81ez')
  bbc_reg_page.fill_in_gender_field
  bbc_reg_page.select_opt('optOut')
end

When("I click register") do
  bbc_reg_page.submit_button
end

Then("I should successfully sign in to my account") do
  bbc_reg_page.resend_field
end
