class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
    
  def show
    # byebug
    # @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
     # @article = Article.find(params[:id])
  end

  def create
    # render plain: params[:article]
    @article = Article.new(article_params.merge(user_id: current_user.id))
    if @article.save
      # flash[:notice] = "Article added successfully."
      render json: {
        notice: 'Article created successfully'
      }, status: 200
    else
      # flash[:alert] = @article.errors.full_messages
      render json: {
        errors: @article.errors.full_messages
      }, status: 400
    end   
  end

  def update
    # @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    # @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private 

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end