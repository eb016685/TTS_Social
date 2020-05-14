class Tag < ApplicationRecord
    has many :tweet_tags
    has many :tweets, through: :tweet_tags


end
