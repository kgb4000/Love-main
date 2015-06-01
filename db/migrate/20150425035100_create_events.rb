class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :event_name
      t.string :event_type
      t.text :event_summary
      t.text :event_band_info
      t.text :event_info
      t.string :event_city
      t.string :event_state
      t.string :event_country
      t.string :event_date
      t.string :event_contact_name
      t.string :event_contact_email
      t.string :event_contact_phone
      t.string :company_name
      t.string :company_info
      t.string :company_city
      t.string :company_state
      t.string :company_country
      t.text :event_description
      t.boolean :food
      t.boolean :drink
      t.boolean :tips
      t.text :compensation_details
      t.string :number_of_bands_needed
      t.string :event_time
      t.string :company_facebook
      t.string :company_twitter
      t.string :company_instagram
      t.boolean :electronic
      t.boolean :rock
      t.boolean :pop
      t.boolean :indie
      t.boolean :jam
      t.boolean :metal
      t.boolean :country_music
      t.boolean :hip_hop
      t.boolean :rap
      t.boolean :folk
      t.boolean :jazz
      t.boolean :blue_grass
      t.boolean :blues
      t.boolean :alternative
      t.boolean :christian
      t.boolean :comedy
      t.boolean :latin
      t.boolean :rb
      t.boolean :world
      t.boolean :amaericana
      t.boolean :classical
      t.boolean :spoken_word
      t.boolean :reggae


      t.timestamps null: false
    end
  end
end
