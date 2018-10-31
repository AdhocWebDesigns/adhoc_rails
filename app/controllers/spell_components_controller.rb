class SpellComponentsController < InheritedResources::Base

  private

    def spell_component_params
      params.require(:spell_component).permit(:spell_component_type_id, :name, :desc)
    end
end

