class TweetsController < ApplicationController
  def index
  	@tweets = current_user.followers.map(&:tweets).first
  end
end
