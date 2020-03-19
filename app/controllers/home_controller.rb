class HomeController < ApplicationController
  def index
  end

  def user_profile
  	@followers = current_user.followers 
  	@following = current_user.following
  end

  def you_can_follow
  	@users = User.all.where("id != ?","#{current_user.id}")
  end 

  def follow
  	followers = current_user.followers.map(&:id)
  	if followers.include?(params["id"])
  		flash.now[:error] = "You are already following"
  	else
  		current_user.following << User.find(params["id"])
  	end
  end
end
