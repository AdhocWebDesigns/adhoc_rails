class PagesController < InheritedResources::Base

  private

    def page_params
      params.require(:page).permit(:author_id, :published_at, :page_title, :heading, :subheading, :contents, :images_id, :parents_id, :children_id)
    end
end

