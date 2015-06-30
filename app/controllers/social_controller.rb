class SocialController < ApplicationController
  def callback
    url = "http://copa-eleven.soccer-king.jp"
    hash_tag = "#コパコカコーラ"
    comment = "キミが選んだ「" + session[:chara_type_name] + "」は" + session[:player_name] + "選手!\n\n投票結果をツイートしてコーラ１ケースを当てよう!\n参加はこちら⇒" + url + "\n\n" + hash_tag
    auth = request.env['omniauth.auth']
    @user_token = auth['credentials']['token']
    @user_secret = auth['credentials']['secret']
    image_path = "public/images/share" + session[:chara_type] + ".jpg"
    image = File.open(image_path)
    twitter_client.update_with_media(comment, image)
  end

  def callback_failure
    redirect_to root_url
  end

  private
  def twitter_client
    Twitter::Client.new(
      :oauth_token => @user_token,
      :oauth_token_secret => @user_secret
    )
  end
end
