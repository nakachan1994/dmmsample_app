class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to todolist_path(@list.id), notice: 'TodoListを作成しました'
    else
      render :new
    end
  end

  def index
    puts "作成したキー#{ENV['SECRET_KEY']}"
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
   @complete = Complete.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to todolist_path(@list.id), notice: 'TodoListを変更しました'
    else
      render :edit
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to todolists_path
  end

  private

  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
