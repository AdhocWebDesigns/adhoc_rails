class AlignmentsController < InheritedResources::Base

  private

    def alignment_params
      params.require(:alignment).permit(:val, :name, :descr)
    end
end

