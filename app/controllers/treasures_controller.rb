class TreasuresController < InheritedResources::Base

  private

    def treasure_params
      params.require(:treasure).permit(:user_id, :items_id)
    end
end

