class WeaponsController < InheritedResources::Base

  private

    def weapon_params
      params.require(:weapon).permit(:user_id, :w_type, :name, :description, :damage, :d_type_id, :weight, :value, :w_prop_id)
    end
end

