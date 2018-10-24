class PagesController < InheritedResources::Base

  private

    def page_params
      params.require(:page).permit(:user_id_id, :published_at, :page_title, :heading, :subheading, :contents, :images_id)
    end
end

