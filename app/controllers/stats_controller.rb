class StatsController < InheritedResources::Base

  private

    def stat_params
      params.require(:stat).permit(:user_id, :str, :dex, :con, :int, :wis, :cha)
    end
end

