class Message < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :message_content, presence: true
end