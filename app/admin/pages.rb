ActiveAdmin.register Page do

	permit_params :user_id, :published_at, :page_title, :heading, :subheading, :contents, :pages, :images


end
