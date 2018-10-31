class LangsController < InheritedResources::Base

  private

    def lang_params
      params.require(:lang).permit(:name, :desc)
    end
end

