class CreateTweetAndTwitterUserTables < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text

      t.timestamps
    end

    create_table :twitter_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
