class DamageTypesController < InheritedResources::Base

  private

    def damage_type_params
      params.require(:damage_type).permit(:name, :mod)
    end
end

