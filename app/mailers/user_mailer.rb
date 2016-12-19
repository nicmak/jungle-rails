class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(email)
    @email = email
    mail to: email
  end

  def order_receipt(order)
    @order = order
    @email = order.email
    mail to: @email
  end
end
