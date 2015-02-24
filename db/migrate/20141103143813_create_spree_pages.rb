class CreateSpreePages < ActiveRecord::Migration
  def self.up
    create_table :spree_pages do |t|
      t.string :title, null: false
      t.text :body
      t.integer :position, default: 1, null: false
      t.boolean :visible, default: true, null: false
      t.string :meta_keywords
      t.string :meta_description
      t.string :slug

      t.timestamps
    end

    add_index :spree_pages, :slug, unique: true
  end

  def self.down
    drop_table :spree_pages
  end
end