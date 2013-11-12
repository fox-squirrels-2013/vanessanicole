enable :sessions

get '/' do

end

get '/:username' do
  @user = TwitterUser.find_by_name(params[:username])
  if @user.tweets.empty?
    @user.fetch_tweets!
  end

  @tweets = @user.tweets
  p @tweets
  erb :index
end


