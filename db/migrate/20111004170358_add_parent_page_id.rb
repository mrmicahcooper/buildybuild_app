class AddParentPageId < ActiveRecord::Migration
  def up
    add_column :pages, :parent_page_id, :integer
  end

  def down
    remove_column :pages, :parent_page_id
  end
end
