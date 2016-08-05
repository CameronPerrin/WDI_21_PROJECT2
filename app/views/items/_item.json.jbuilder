json.extract! item, :id, :name, :description, :armor_photo, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)