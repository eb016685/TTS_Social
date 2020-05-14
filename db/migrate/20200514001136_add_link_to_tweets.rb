class AddLinkToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :link, :string
    add_column :tweets, :length, :integer
  end
end
