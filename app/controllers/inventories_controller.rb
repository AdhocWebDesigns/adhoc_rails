class InventoriesController < InheritedResources::Base

  private

    def inventory_params
      params.require(:inventory).permit(:user_id, :items_id)
    end
end

