module Spree
  class Page < ActiveRecord::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: [:slugged, :finders]

    belongs_to :page_section

    has_attached_file :image,
                      styles: { large: '600x600>' },
                      default_style: :large,
                      url: '/spree/pages/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/pages/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

    validates :title, presence: true
    validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }

    scope :visible, -> { where(visible: true) }
    default_scope { order(:position) }

    def slug_candidates
      [:title]
    end

    def should_generate_new_friendly_id?
      title_changed?
    end
  end
end