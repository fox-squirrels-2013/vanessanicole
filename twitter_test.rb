require 'twitter'

Twitter.configure do |config|
  config.consumer_key = '1SsYzVAugXcGV5UXMvkzA'
  config.consumer_secret = 'mggKeXGj91wBnDK0p8xd4ooZdXKApue3yHSLThFdM6U'
  config.oauth_token = '140140984-LgRTAWUuN3om0gnaPrzzNF1TXmLZmrjydfBrGwWb'
  config.oauth_token_secret = 'IJtabvB5iVGnufdfKEdM1KPyjZ1JniUYIYftCdiNEKTGl'
end

# Twitter.update(ARGV[0])
user = Twitter.user('vipyne')
p user[:status][:text]
user_timeline = Twitter.home_timeline
user_timeline.each do |tweet|
  p tweet[:text]
end