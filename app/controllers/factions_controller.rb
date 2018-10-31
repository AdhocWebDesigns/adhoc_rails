class FactionsController < InheritedResources::Base

  private

    def faction_params
      params.require(:faction).permit(:name, :desc)
    end
end

