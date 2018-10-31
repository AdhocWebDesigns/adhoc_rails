class SpellComponentTypesController < InheritedResources::Base

  private

    def spell_component_type_params
      params.require(:spell_component_type).permit(:name, :symbol, :desc)
    end
end

