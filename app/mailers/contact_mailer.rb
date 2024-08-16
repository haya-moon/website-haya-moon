class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(
      from: @contact.email,
      to: ENV['CONTACT_EMAIL'],
      subject: 'New Contact Form Message'
    )
  end
end
