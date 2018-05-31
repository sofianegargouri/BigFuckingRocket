json.extract! user_resource, :id, :quantity, :user_id, :resource_id, :created_at, :updated_at
json.url user_resource_url(user_resource, format: :json)
