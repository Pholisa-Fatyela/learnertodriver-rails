class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.feedback.subject
  #
  def feedback(user, quote, meaning)
    @greeting = "Hi"
    @user = user
    @quote = quote
    @meaning = meaning

    mail to: "hi@snails.za"
  end
end
