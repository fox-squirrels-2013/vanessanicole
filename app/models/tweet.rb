class Tweet < ActiveRecord::Base
  belongs_to :twitter_us

  def fetch_tweets!

  end


end
