class DamageEffectsController < InheritedResources::Base

  private

    def damage_effect_params
      params.require(:damage_effect).permit(:name, :value)
    end
end

