class MotorcyclesController < ApplicationController
  
  def list
    @motorcycles = Motorcycle.order("motorcycles.manufacturer ASC")
  end
  
  def view
    @motorcycle = Motorcycle.find(params[:id])
  end
  
end
