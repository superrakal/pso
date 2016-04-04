class MessageMailerWorker
  def self.perform(name, email, message)
    MessageMailer.new_message(name, email, message).deliver_now
  end
end