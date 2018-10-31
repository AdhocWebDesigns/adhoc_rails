class SpellSchoolsController < InheritedResources::Base

  private

    def spell_school_params
      params.require(:spell_school).permit(:name, :desc)
    end
end

