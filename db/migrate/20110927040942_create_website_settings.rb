class CreateWebsiteSettings < ActiveRecord::Migration
  def change
    create_table :website_settings do |t|
      t.string :setting_name, :unique => true
      t.string :setting_value

      t.timestamps
    end
  end
end
