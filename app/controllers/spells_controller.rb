class SpellsController < InheritedResources::Base

  private

    def spell_params
      params.require(:spell).permit(:level, :cast_time, :range, :components_id, :duration, :spell_school_id, :attack_save, :damage_effect_id, :name, :dnd_classes_id, :desc)
    end
end

