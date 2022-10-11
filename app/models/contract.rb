# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :purchase
  belongs_to :group
end
