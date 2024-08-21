# class ContactsController < ApplicationController
#   def create
#     # Directly use form parameters without the need for a Contact model
#     name = params[:contact][:name]
#     email = params[:contact][:email]
#     message = params[:contact][:message]

#     if name.present? && email.present? && message.present?
#       # Use Mailgun API directly
#       begin
#         RestClient.post "https://api:#{ENV['MAILGUN_API_KEY']}@api.mailgun.net/v3/#{ENV['MAILGUN_DOMAIN']}/messages",
#                         from: email,
#                         to: ENV['CONTACT_EMAIL'],
#                         subject: "New Contact Form Message from #{name}",
#                         text: message

#         flash[:success] = 'Your message has been sent!'
#         redirect_to root_path
#       rescue RestClient::ExceptionWithResponse => e
#         Rails.logger.error "Mailgun API error: #{e.response}"
#         flash[:error] = 'Error occurred, your message has not been sent.'
#         render 'pages/home'
#       end
#     else
#       flash[:error] = 'Please fill in all the required fields.'
#       render 'pages/home'
#     end
#   end
# end
