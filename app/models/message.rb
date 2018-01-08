class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :body, :subject
  validates :name, :email, :body, :subject, presence: true
end
