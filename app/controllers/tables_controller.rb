class TablesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
  end

  def show
    @table = Table.find(params[:id])
  end

  def edit
    @table = Table.find(params[:id])
  end

  def create
    @table = Table.new(table_params)
    @tables = Table.all

    if @table.save
      render 'index'
    else
      render 'new'
    end
  end

  def update
    @table = Table.find(params[:id])

    if @table.update(table_params)
      render 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    render 'index'
  end

  private
    def table_params
      params.require(:table).permit(:seats, :booked)
    end
end
