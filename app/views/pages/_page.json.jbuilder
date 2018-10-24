json.extract! page, :id, :author_id, :published_at, :page_title, :heading, :subheading, :contents, :images_id, :parents_id, :children_id, :created_at, :updated_at
json.url page_url(page, format: :json)
