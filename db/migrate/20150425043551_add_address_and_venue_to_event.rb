class AddAddressAndVenueToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :event_venue, :string
    add_column :events, :event_address, :string
  end
end
