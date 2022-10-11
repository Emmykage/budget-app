# frozen_string_literal: true

class User < ApplicationRecord
  has_many :purchases
  has_many :groups
  has_many :group_purchases, through: :purchases
end
