class ArticlesController < ApplicationController
  efore_action :authenticate_user!
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def new
    @data = {
      article: Article.new,
      sources: Source.all
    }
  end

  def create
    @article = Article.create(article_params)
    if @article.save
      flash[:notice] = "Create succeed"
      redirect_to articles_path
    else
      @data = {
        article: @article,
        sources: Source.all
      }
      render :new
    end
  end

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
    @data = {
      article: Article.find(params[:id]),
      sources: Source.all
    }
  end

  def update
    if @article.update(article_edit_params)
      flash[:notice] = "Update succeed"
      redirect_to article_path(@article)
    else
      @data = {
        article: @article,
        sources: Source.all
      }
      render :edit
    end
  end

  def destroy
    @article.destroy

    if @article.destroyed?
      flash[:notice] = "Delete succeed"
    else
      flash[:alert] = "Delete fail"
    end

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :link, :content, :author, :source_id)
  end

  def article_edit_params
    params.require(:article).permit(:title, :link, :content, :author, :source_id)
  end
end
