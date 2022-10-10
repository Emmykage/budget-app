class User < ApplicationRecord
    has_many :categories
    has_many :category_transactions, through: :category
    has_many :transactions, through: :category_transaction
end
