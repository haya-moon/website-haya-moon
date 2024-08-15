class Contact < ApplicationRecord
  def contact_email(contact)
    @contact = contact
    mail(
      to: ENV['CONTACT_EMAIL'],
      from: @contact.email,
      subject: 'New Contact Form Submission'
    ) do |format|
      format.html { render 'contact_email'}
      format.text { render 'contact_email'}
    end
  end
end
