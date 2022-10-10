# frozen_string_literal: true

class Purchase < ApplicationRecord
  has_many :contracts

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: false, greater_than_or_equal_to: 0 }
end
