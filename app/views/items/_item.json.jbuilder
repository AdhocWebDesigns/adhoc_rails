json.extract! item, :id, :user_id, :name, :qty, :description, :value_sp, :weight, :created_at, :updated_at
json.url item_url(item, format: :json)
