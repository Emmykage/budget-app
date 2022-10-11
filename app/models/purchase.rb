# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_purchases
  # has_and_belongs_to_many :groups, optional: true
end
