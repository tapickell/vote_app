class Vote < ActiveRecord::Base
  validates :email, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates_presence_of :coffee
end
