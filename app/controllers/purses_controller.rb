class PursesController < InheritedResources::Base

  private

    def purse_params
      params.require(:purse).permit(:user_id, :cp, :sp, :ep, :gp, :pp)
    end
end

