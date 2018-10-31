class PhotosController < InheritedResources::Base

  private

    def photo_params
      params.require(:photo).permit(:caption, :user_id)
    end
end

