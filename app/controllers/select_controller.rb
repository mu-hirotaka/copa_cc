class SelectController < ApplicationController
  CHARA_NAMES = Settings.chara.names
  def index
    @chara_type = [*1..11].sample
    @chara_type_name = CHARA_NAMES[@chara_type.to_i - 1]
  end

  def show
    @res_name = params[:name]
    @res_chara_type = params[:c_type]
    @res_chara_type_name = CHARA_NAMES[@res_chara_type.to_i - 1]
    session[:player_name] = @res_name
    session[:chara_type] = @res_chara_type
    session[:chara_type_name] = @res_chara_type_name
  end
end
