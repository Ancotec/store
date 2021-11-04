class OrderDetail < ApplicationRecord
  belongs_to :order #relacion muchos a uno con tabla order
  belongs_to :product #relacion muchos a uno con  tabla product

  validates :order_id, presence: true
  validates :products_id, presence: true
  validates :quantity, presence: true, numericality:true

end
