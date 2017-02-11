class TablesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_tables

  def index
    
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

    if @table.save
      redirect_to @table
    else
      render 'new'
    end
  end

  def update
    @table = Table.find(params[:id])

    if @table.update(table_params)
      redirect_to @table
    else
      render 'edit'
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_path
  end

  private
    def table_params
      params.require(:table).permit(:seats, :booked, :blocked)
    end

    def set_tables
      @tables = Table.all
    end
end
