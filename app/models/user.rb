# frozen_string_literal: true

class User < ApplicationRecord
  has_many :purchases
  has_many :groups

  validates :name, presence: true
end
