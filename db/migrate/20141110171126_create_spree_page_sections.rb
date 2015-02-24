class CreateSpreePageSections < ActiveRecord::Migration
  def change
    create_table :spree_page_sections do |t|
      t.string :name

      t.timestamps
    end

    add_column :spree_pages, :page_section_id, :integer
  end
end
