# frozen_string_literal: true

class GroupPurchase < ApplicationRecord
  belongs_to :purchase
  belongs_to :group
end
