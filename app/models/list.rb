class List < ApplicationRecord
  attachment :image

  has_many :completes, dependent: :destroy

  validates :title, presence:true, length: {maximum: 20}
  validates :body, presence:true
end
