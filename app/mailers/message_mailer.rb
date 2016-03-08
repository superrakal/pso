class MessageMailer <  ActionMailer::Base
  def new_message(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(charset: 'utf-8', to: 'info@pso.kz', subject: 'Новое сообщение с сайта!')
  end
end
