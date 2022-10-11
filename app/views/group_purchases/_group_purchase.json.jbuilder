# frozen_string_literal: true

json.extract! group_purchase, :id, :purchase_id, :group_id, :created_at, :updated_at
json.url group_purchase_url(group_purchase, format: :json)
