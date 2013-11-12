class TwitterUser < ActiveRecord::Base
  has_many :tweets

  def fetch_tweets!
    # tweets_array = []
    @home = Twitter.user_timeline(self[:name])

    # get Twitter.home_timeline

    user_id = TwitterUser.where(name: self[:name]).first.id

    @home.map do |get_tweet|
      Tweet.create(twitter_user_id: user_id, text: get_tweet[:text])
      # self.tweets << get_tweet[:text]
      # @user << get_tweet[:text]
    end

    # tweets_array
    # map timeline, referencing attrs[:text]
      # shove attrs[:text] into TwitterUser.tweets
  end

  def tweets
    user_id = TwitterUser.where(name: self[:name]).first.id
    tweets = Tweet.where(twitter_user_id: user_id)

    tweets.map { |tweet| tweet }
  end
end
