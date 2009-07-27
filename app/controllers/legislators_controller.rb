class LegislatorsController < ApplicationController
  def create
    @legislator = Legislator.new params[:legislator]
    if @legislator.save
      flash[:notice] = "The legislator was saved successfully."
      redirect_to legislator_path(@legislator)
    else
      render :action => "new"
    end
  end
  
  def new
    @legislator = Legislator.new
  end
  
  def index
    @legislators = Legislator.all
  end
  
  def edit
    @legislator = Legislator.find(params[:id])
  end
  
  def update
    @legislator = Legislator.find(params[:id])
    @legislator.update_attributes(params[:legislator])
    redirect_to legislator_path(@legislator)    
  end
  
  def show
    @legislator = Legislator.find(params[:id])
  end
  
end