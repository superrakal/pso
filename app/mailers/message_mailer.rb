class MessageMailer <  ActionMailer::Base
  def new_message(name, email, organization, message)
    @name = name
    @email = email
    @message = message
    @organization = organization
    mail(charset: 'utf-8', to: 'info@pso.kz', subject: 'Новое сообщение с сайта!')
  end
end
