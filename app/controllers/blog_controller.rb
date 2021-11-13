class BlogController < ApplicationController

  def blog
    if User.count != 0
      list
    else
      new
    end
  end

  def login
    render 'login'
  end

  def new
    @user = User.new
  end

  def list
    render 'posts_list'
    @posts_list = Post.all
    # @posts = @posts.paginate(page: params[:page])
  end
end
