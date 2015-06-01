class AddVideoLinkToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :event_video, :string
  end
end
