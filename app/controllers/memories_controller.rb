class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  def show
  end

  def new
    @memory = Memory.new
  end
  
  def create
    memory = Memory.new(memory_params)
    memory.save
    redirect_to memory_path(params[:id])
  end

  def edit
  end
  
  private
  def memory_params
    params.require(:memory).permit(:title, :body)
  end
end
