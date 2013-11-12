enable :sessions

get '/' do

end

get '/:username' do
  p "*"*15

  @user_timeline = Twitter.user_timeline
  erb :index
end


