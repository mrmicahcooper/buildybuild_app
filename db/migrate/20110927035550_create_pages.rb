class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.string :body
      t.date   :published_at
      t.timestamps
    end
  end
end
