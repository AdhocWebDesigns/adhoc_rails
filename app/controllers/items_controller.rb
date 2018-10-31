class ItemsController < InheritedResources::Base

  private

    def item_params
      params.require(:item).permit(:user_id, :name, :qty, :description, :value_sp, :weight)
    end
end

