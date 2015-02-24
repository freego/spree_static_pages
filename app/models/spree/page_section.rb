class Spree::PageSection < ActiveRecord::Base
  has_many :pages, -> { visible }
end
