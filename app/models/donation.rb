class Donation < ApplicationRecord

  belongs_to :owner, class_name: "User"
  belongs_to :customer, class_name: "User"

  enum status: { unclaimed: 0, claimed: 10 }

  validates :name, :category, presence: true
  validates :name, length: { maximum: 120 }
end