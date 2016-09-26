class Contact < ApplicationRecord
  validates_presence_of :name, :phone
  has_many :messages
end
