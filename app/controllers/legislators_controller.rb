class LegislatorsController < ApplicationController
  def create
    @legislator = Legislator.new params[:legislator]
    if @legislator.save
      flash[:notice] = "The legislator was saved successfully."
      redirect_to legislators_path
    else
      render :action => "new"
    end
  end
  
  def new
    @legislator = Legislator.new
  end
  
end