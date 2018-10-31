class ArmoursController < InheritedResources::Base

  private

    def armour_params
      params.require(:armour).permit(:user_id, :name, :description, :ac, :strength, :stealth, :weight, :value)
    end
end

