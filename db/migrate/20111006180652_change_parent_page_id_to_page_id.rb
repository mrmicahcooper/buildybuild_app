class ChangeParentPageIdToPageId < ActiveRecord::Migration
  def up
    remove_column :pages, :parent_page_id
    add_column :pages, :page_id, :integer
  end

  def down
    remove_column :pages, :page_id
    add_column :pages, :parent_page_id, :integer
  end
end
