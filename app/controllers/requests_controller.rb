class RequestsController < ApplicationController
  def show
    @request = Request.find(params[:id])
  end
  
  def new
    @request = Request.new
  end
  
  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to @request
    else
      render 'new'
    end
  end
  
  def index
    @requests = Request.all
  end
  
  
  def calculator
  end

  def about
  end

  def researchers
  end
  
  private
  def request_params
    params.require(:request).permit(:location, :depth, :color)
  end
end
