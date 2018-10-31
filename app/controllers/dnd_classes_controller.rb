class DndClassesController < InheritedResources::Base

  private

    def dnd_class_params
      params.require(:dnd_class).permit(:name, :desc)
    end
end

