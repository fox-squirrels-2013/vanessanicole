user = TwitterUser.create(name: 'vipyne')

Tweet.create(twitter_user_id: user.id)