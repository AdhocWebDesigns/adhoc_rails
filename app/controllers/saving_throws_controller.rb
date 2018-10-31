class SavingThrowsController < InheritedResources::Base

  private

    def saving_throw_params
      params.require(:saving_throw).permit(:name, :desc)
    end
end

