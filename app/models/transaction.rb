class Transaction < ApplicationRecord
    has_many :category_transactions
    validates :name, presence: true

    validates :amount, presence: true, numericality: { only_integer: false, greater_than_or_equal_to: 0}
end
