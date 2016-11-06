class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @sources = Source.all
  end

  def article_params
    params.require(:articles).permit(:title, :link, :content, :author, :source_id)
  end

  def article_edit_params
    params.require(:article).permit(:title, :link, :content, :author, :source_id)
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to 'list'
    else
      render 'new'
    end
  end


  def list
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    # @sources = @article.sources
    # binding.pry
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_edit_params)
      redirect_to '/articles/list'
    else
      render 'edit'
    end
  end

  def delete
    Article.find(params[:id]).destroy
    redirect_to 'list'
  end

end
