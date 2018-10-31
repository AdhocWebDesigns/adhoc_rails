class RacesController < InheritedResources::Base

  private

    def race_params
      params.require(:race).permit(:desc)
    end
end

