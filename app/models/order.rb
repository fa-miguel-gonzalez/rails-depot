class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type

  PAYMENT_TYPES = [ 'Check', 'Credit card', 'Purchase order']

  has_many :line_items, dependant: :destroy

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
end
