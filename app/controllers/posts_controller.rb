class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def new
    @post = Post.new
  end

  def index
    @post = Post.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def show
  end
  
  def create
    @post = Post.new(permit_post)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
      
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
    def permit_post
        params.require(:post).permit(:post_road,:post_city,:post_district,:post_roomtype,:post_price,:post_phone,:post_intro,:post_picture)
    end
  
  
end
