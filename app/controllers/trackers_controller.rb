class TrackersController < ApplicationController
  
def index 
    @entry = Tracker.all.order("id DESC")
end

  # def about
  # end

  # def edit
  #   @place = Place.find(params[:id])
  #   if @place.user != current_user
  #     return render text: 'Not Allowed', status: :forbidden
  #   end
  # end

  def new
    @entry = Tracker.new
  end

  def create
     @entry = Tracker.create(entry_params)
    if @entry.invalid?
      flash[:error] = '<strong>Could not save.</strong> The data you entered is invalid.'
    end
    redirect_to trackers_path
  end


  # def destroy
  #     @place = Place.find(params[:id])
  #     if @place.user != current_user
  #       return render text: 'Not Allowed', status: :forbidden
  #      end

  #     @place.destroy
  #     redirect_to root_path
  # end

  def show
      @entry = Tracker.find(params[:id])
  end

  private

  def entry_params
    params.require(:tracker).permit(:pain_level, :description)
  end

end
