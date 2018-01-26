require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  POSTCODE_FIELD = postcode-input
  POSTCODE_ERROR_MESSAGE = form-message-postcode

  def visit_register_page
    visit('register')
  end

  def enter_DOB(day, month, year)
    fill_in('Day', with: day)
    fill_in('Month', with: month)
    fill_in('Year', with: year)
  end

  def click_next_button
    click_button('submit-button')
  end

  def fill_in_email(email)
    fill_in('Email', with: email)
  end

  def fill_in_password(password)
    fill_in('Password', with: password)
  end

  def password_field
    find_field('Password')
  end

  def check_error_message
    find(:css, 'p.form-message__text').text
  end

  def find_postcode_field
    find_field(POSTCODE_FIELD)
  end

  def fill_in_postcode_field(postcode)
    fill_in('postcode', with: postcode)
  end

  def check_postcode_error_message
    find_field(POSTCODE_ERROR_MESSAGE)
  end


end
