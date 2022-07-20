class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def create
    @list = List.new(list_params)
    #validação
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to @list
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
