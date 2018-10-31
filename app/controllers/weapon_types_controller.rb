class WeaponTypesController < InheritedResources::Base

  private

    def weapon_type_params
      params.require(:weapon_type).permit(:name, :desc)
    end
end

