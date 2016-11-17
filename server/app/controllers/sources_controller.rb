class SourcesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_source, only: [:edit, :update, :show, :destroy]

  def new
    @source = Source.new
  end

  def create
    @source = Source.create(source_params)
    if @source.save
      flash[:notice] = "Create succeed"
      redirect_to sources_path
    else
      @sources = Source.all
      render :new
    end
  end

  def index
    @sources = Source.all
  end

  def show
  end

  def edit
    @source = Source.find(params[:id])
  end

  def update
    if @source.update(source_params)
      flash[:notice] = "Update succeed"
      redirect_to source_path(@source)
    else
      render :edit
    end
  end

  def destroy
    @source.destroy
    if @source.destroyed?
      flash[:notice] = "Delete succeed"
    else
      flash[:alert] = "Delete fail"
    end

    redirect_to source_path
  end

  private

  private

  def set_source
    @article = Source.find(params[:id])
  end

  def set_source
    @source = Source.find(params[:id])
  end

  def source_params
    params.require(:source).permit(:name, :source_link, :user_id, :tags)
  end

  # def article_edit_params
  #   params.require(:article).permit(:title, :link, :content, :author, :source_id)
  # end

end
