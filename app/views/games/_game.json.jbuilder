json.extract! game, :id, :user_id, :name, :description, :photo_id, :created_at, :updated_at
json.url game_url(game, format: :json)
