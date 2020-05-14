class EpicenterController < ApplicationController
  def feed
     #This include tweeets from people we follow and our own tweets 
     @following_tweet = []
     Tweet.all.each do |tweet| 
       if current_user.following.include?(tweet.user_id) || current_user.id == tweet.user_id 
         @following_tweet.push(tweet)
       end
     end
  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
    current_user.following.push(params[:id].to_i)
    current_user.save

    redirect_to show_user_path(id: params[:id])
  end

  def unfollow
    current_user.following.push(params[:id].to_i)
    current_user.save

    redirect_to show_user_path(id: params[:id])

  end
end
