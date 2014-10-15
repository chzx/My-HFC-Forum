class ProfilesController < ApplicationController

  def show
    @student = current_user

    @can_edit = true

  	render 'students/show.html.erb'
  end

  def edit
    render 'students/edit.html.erb'
  end

  def update
    current_user.update(user_params)
    redirect_to profile_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :website_url, :twitter_url, :skype, :bio, :professional_interests, :github_url)
    end


end
