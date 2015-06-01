class Event < ActiveRecord::Base

  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true

  validates :event_name, :event_type, :event_summary, :event_band_info, 
        		:event_info, :event_venue, :event_address, :event_city, :event_state, :event_country, :event_date, :event_contact_name, 
        		:event_contact_email,:company_name, :company_city, :event_description, 
        		:compensation_details, :number_of_bands_needed, :event_time, presence: true

  validates :event_contact_phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
  def days_left
  	4 + 12
  end

end
