class PagesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :page_does_not_exist
	
  def home
  	@events = Event.all.limit(6)
  end

  def blog
  end

  def contact
  end

  def about
    @events = Event.all.limit(1)
  end

  private

  def page_does_not_exist
    logger.error "Attempt to access non existant page"
    redirect_to home_path, notice: "Page does not exist"
  end

end
