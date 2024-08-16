class Contact
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :message

  validates :name, :email, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
