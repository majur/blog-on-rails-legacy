class BlogController < ApplicationController

  def blog
    if User.count != 0
      posts_list
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

  def posts_list
    render 'posts_list'
    # @posts = @posts.paginate(page: params[:page])
  end

  def posts
    render 'post'
  end

end
