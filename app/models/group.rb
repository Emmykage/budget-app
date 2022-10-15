class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  belongs_to :user
  has_and_belongs_to_many :trades, dependent: :delete_all
end
