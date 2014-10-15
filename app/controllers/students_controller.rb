class StudentsController < ApplicationController
  def index
  end

  def show

  	@can_edit = false

  	puts "Logged in user id = #{current_user.id.inspect}"
  	puts "User you're trying to view = #{params[:id].inspect}"

  	if current_user.id.to_i == params[:id].to_i
  		redirect_to profile_path
  		return
  	end

  	@student = User.find(params[:id])
  end

  def update
    @user = current_user.update(user_params)
    redirect_to profile_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :website_url, :twitter_url, :skype, :professional_interests, :bio, :github_url)
    end

end
