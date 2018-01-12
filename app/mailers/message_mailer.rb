class MessageMailer
  def contact_me(message)
    @body = message.body

    mail to: "david.hale7@gmail.com", from: message.email, subject: message.subject
  end
end
