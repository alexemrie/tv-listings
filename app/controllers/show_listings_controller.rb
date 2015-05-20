class ShowListingsController < ApplicationController
  def new
    @show_listing = ShowListing.new
  end

  def create
    @show_listing = ShowListing.new(show_listing_params)
    if @show_listing.save
      flash[:notice] = "Show Listing Successfully Added"
      redirect_to show_path(@show_listing.show_id)
    else
      render :new
    end
  end

  def show
    @show_listing = ShowListing.find(params[:id])
  end

  private


  def show_listing_params
    params.require(:show_listing).permit(:date, :show_id, :channel_id)
  end

end
