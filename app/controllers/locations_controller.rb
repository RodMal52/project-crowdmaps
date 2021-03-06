class LocationsController < ApplicationController
 include Twitter::Extractor


  def index
  if params[:search].present?
    @locations = Location.near(params[:search], 50, :order => :distance)
  else
    @locations = Location.all
  end
end

  def show
   
    @location = Location.find(params[:id])
    
  end

  def new
    @location = Location.new
    
  end
  
  def inside
    @location = Location.new
    
  end

  def create
    
    @location = Location.new(location_params)
    temp = ""
    if @location.save
        @location.hashtags.each do |hashtag|
          temp= temp+", #"+hashtag.name
        end       
      @location.hashtag = temp
    @location.save
      redirect_to inside_path, :notice => "Successfully created report."
    else
      render :action => 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to inside_path, :notice  => "Successfully updated report."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url, :notice => "Successfully destroyed location."
  end
    
    def location_params
         params[:location].permit(:address, :latitude, :longitude, :hashtag)
    end 
    
    
    
    
       
    
end
