class MessageMailer < ActionMailer::Base
  def contact_me(message)
    @body = message.body

    mail to: ENV['MY_EMAIL'], from: message.email, subject: message.subject
  end
end
