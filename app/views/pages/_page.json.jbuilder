json.extract! page, :id, :user_id, :published_at, :page_title, :heading, :subheading, :contents, :images_id, :created_at, :updated_at
json.url page_url(page, format: :json)
