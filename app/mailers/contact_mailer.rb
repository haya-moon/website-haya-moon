class ContactMailer < ApplicationMailer
  def self.contact_email(contact)
    @contact = contact
    RestClient.post "https://api:#{ENV['MAILGUN_API_KEY']}@api.mailgun.net/v3/#{ENV['MAILGUN_DOMAIN']}/messages",
                    from: @contact.email,
                    to: ENV['CONTACT_EMAIL'],
                    subject: "New Contact Form Message from #{@contact.name}",
                    text: @contact.message
  rescue RestClient::ExceptionWithResponse => e
    Rails.logger.error "Mailgun API error: #{e.response}"
  end
end
