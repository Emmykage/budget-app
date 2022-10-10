# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :category
  belongs_to :purchase
end
