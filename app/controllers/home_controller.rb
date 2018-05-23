class HomeController < ApplicationController
  def new
  end
  
  def create
    @info=Info.new
    @info.name=params[:name]
    @info.school=params[:school]
    @info.save
    redirect_to '/home/list'
  end
  
  def list
    @data=Info.all
  end
  
  def destroy_all
    Info.destroy_all
    redirect_to '/home/list'
  end
  
  def destroy_one
    @what_delete=Info.find(params[:id])
    @what_delete.destroy
    redirect_to '/home/list'
  end
end
