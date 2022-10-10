# frozen_string_literal: true

json.extract! category, :id, :name, :icon, :total_amount, :user_id, :created_at, :updated_at
json.url category_url(category, format: :json)
