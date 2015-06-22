class SelectController < ApplicationController
  def index
    @chara_type = [*1..11].sample
  end

  def show
    logger.debug params[:name]
    logger.debug params[:c_type]
  end
end
