class LikedArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_source, only: [:edit, :update, :show, :destroy]

  def new
    @like_article = LikedArticle.new
  end

  def create
    binding.pry
    @like_article = LikedArticle.create(like_articles_params)
    if @like_article.save
      flash[:notice] = "Create succeed"
      respond_to do |format|
        format.html {redirect_to :back, notice: "Liked!"}
        format.js
      end
    else
      @like_articles = LikedArticle.all
      render :new
    end
  end

  def index
    # @like_articles = LikedArticle.all
    if params[:tag] == "like"
      self.make_like params[:user_id], params[:article_id]
    else
      self.make_dislike params[:user_id], params[:article_id]
    end

    redirect_to article_path params[:article_id]
  end

  def show
  end

  def edit
    @like_article= LikedArticle.find(params[:id])
  end

  def update
    if @like_article.update(like_articles_params)
      flash[:notice] = "Update succeed"
      redirect_to articles_path(@like_articles.article_id)
    else
      redirect_to articles_path
    end
  end

  def destroy
    @like_article = LikedArticle.where(user_id: params[:user_id], article_id: params[:article_id])
    if @like_article.destroyed?
      flash[:notice] = "Delete succeed"
    else
      flash[:alert] = "Delete fail"
    end

    redirect_to like_article_path
  end



  def make_like user_id, article_id
    @like_article = LikedArticle.new
    @like_article.user_id = user_id
    @like_article.article_id = article_id
    @like_article.save
  end

  def make_dislike user_id, article_id
    LikedArticle.where(user_id: user_id, article_id: article_id).each do |x|
      x.delete
    end
  end

private
  def set_like_article
    @like_article = like_article.find(params[:id])
  end

end
