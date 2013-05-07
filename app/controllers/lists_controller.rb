class ListsController < ApplicationController
  
  def index
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
    @comments = @list.comments

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list.venues }
    end
  end
  
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(params[:list])

    respond_to do |format|
      if @list.save
        format.js
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render json: @list, status: :created, location: @list }
      else
        format.html { render action: "new" }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end

  end
  
end
