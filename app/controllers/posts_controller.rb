class PostsController < ApplicationController

  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end



  def index

    if params[:category].present?
      @posts = Post.where(:category=>params[:category].capitalize)
      .order('created_at desc')
      .paginate(:page=>params[:page], :per_page=>3)
    else
      @posts = Post.all
                 .order('created_at desc')
                 .paginate(:page => params[:page], :per_page=>3)
    end

    @post = Post.new
  end

  #def show
  #  @post = Post.find(params[:id])

  #  respond_to do |format|
  #    format.html
  #end


  def create
    @post = Post.new( custom_fancy_post_params_name )
    @posts = Post.all.order('created_at desc')

    if @post.save
      flash[:notice] = 'Post created successfully!'
      redirect_to posts_path
    else
      @posts = Post.all.order('created_at desc')
              .paginate(:page=>params[:page], :per_page=>3)

      flash.now[:notice] = @post.errors.full_messages.join(", ")
      render 'index.html.erb'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "You've logged out yo"
    redirect_to user_session_path
  end

  private
    def custom_fancy_post_params_name
      params.require(:post).permit(:category,:content)
    end

end
