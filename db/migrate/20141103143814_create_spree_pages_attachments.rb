class CreateSpreePagesAttachments < ActiveRecord::Migration
  def self.up
    add_attachment :spree_pages, :image
  end

  def self.down
    remove_attachment :spree_pages, :image
  end
end