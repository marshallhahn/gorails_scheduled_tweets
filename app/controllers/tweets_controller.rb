class TweetsController < ApplicationController
  before_action :require_user_logged_in!

  def index
    @tweets = Current.user.tweets
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Current.user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice: "Tweet scheduled for #{@tweet.publish_at}"
    else
      render :new
    end
  end

  private

  def tweet_params
    params.required(:tweet).permit(:twitter_account_id, :body, :publish_at)
  end
end
