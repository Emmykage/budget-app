# frozen_string_literal: true

class User < ApplicationRecord
  has_many :categories
  has_many :contracts, through: :category
  has_many :purchases, through: :contract
end
