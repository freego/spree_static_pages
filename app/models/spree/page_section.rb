class Spree::PageSection < Spree::Base
  has_many :pages, -> { visible }
end
