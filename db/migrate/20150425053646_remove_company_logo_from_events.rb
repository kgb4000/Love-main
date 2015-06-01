class RemoveCompanyLogoFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :company_logo
  end
end
