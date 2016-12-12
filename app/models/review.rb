class Review < ActiveRecord::Base
  belongs_to :product, dependent: :destroy
  belongs_to :user, dependent: :destroy
  # validates :product_id, presence: true
  # validates :user_id, presence: true
  validates :description, presence: true
  validates :rating, presence:true,
                     numericality:true
end
