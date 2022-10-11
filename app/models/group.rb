# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  has_many :contracts, dependent: :destroy
  has_many :purchases, through: :contracts, dependent: :destroy
  # has_and_belongs_to_many :purchases, optional: true

  validates :name, presence: true
end
