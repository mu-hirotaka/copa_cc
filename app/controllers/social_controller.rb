class SocialController < ApplicationController
  def callback
#    comment = params[:comment]
#    auth = request.env['omniauth.auth']
    logger.debug session[:player_name]
    logger.debug session[:chara_type]
#    @user_token = auth['credentials']['token']
#    @user_secret = auth['credentials']['secret']
#    image = File.open("public/images/logo.png")
#    twitter_client.update_with_media(comment, image)
  end

  private
  def twitter_client
    Twitter::Client.new(
      :oauth_token => @user_token,
      :oauth_token_secret => @user_secret
    )
  end
end
