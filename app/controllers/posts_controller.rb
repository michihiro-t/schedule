class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title,:start_date, :end_date, :all_day, :schedule_memo))
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :posts
    else
      render "new"
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
     
  end
end
