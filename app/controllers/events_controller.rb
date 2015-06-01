class EventsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :event_does_not_exist
  before_filter :correct_user, only: [:edit, :update, :destroy]
  # GET /events
  # GET /events.json
  def index
    @events = Event.paginate(page: params[:page], :per_page => 20)
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def event_does_not_exist
      logger.error "Attempt to access non existant event #{params[:id]}"
      redirect_to events_url, notice: "Event does not exist"
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_name, :event_type, :event_summary, :event_band_info, 
        :event_info, :event_venue, :event_address, :event_city, :event_state, :event_country, :event_date, :event_contact_name, 
        :event_video, :event_contact_email, :event_contact_phone, :company_name, :company_info, :company_city, 
        :company_state, :company_country, :event_description, :food, :drink, :tips, 
        :compensation_details, :number_of_bands_needed, :event_time, :company_facebook, 
        :company_twitter, :company_instagram, :electronic, :rock, :pop, :indie, :jam, :metal, 
        :country_music, :hip_hop, :rap, :folk, :jazz, :blue_grass, :blues, :alternative, :christian, 
        :comedy, :latin, :rb, :world, :amaericana, :classical, :spoken_word, :reggae)
    end
end
