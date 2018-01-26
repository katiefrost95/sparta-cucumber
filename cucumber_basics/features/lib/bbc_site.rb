require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def bbc_sign_up_page
    BbcSignUpPage.new
  end

  def bbc_reg_page
    BbcRegistrationPage.new
  end
end
