# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :user
  has_many :contracts
  has_many :purchases, through: :contracts
  # has_and_belongs_to_many :purchases, optional: true
end
