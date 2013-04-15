class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :price, :detail, :image
  has_attached_file :image
    validates :name, presence: true
    validates :category_id, presence: true
    validates :price, presence: true




  belongs_to :category
  has_many :orders, class_name: "Order", foreign_key: :product_id
end
