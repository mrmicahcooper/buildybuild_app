class CreateWebsiteSettings < ActiveRecord::Migration
  def change
    create_table :website_settings do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
