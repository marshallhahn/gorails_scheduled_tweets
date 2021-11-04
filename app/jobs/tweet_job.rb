class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?
    tweet.publish_to_twitter!
  end
end
