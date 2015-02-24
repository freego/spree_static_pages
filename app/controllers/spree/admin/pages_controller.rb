module Spree
  module Admin
    class PagesController < ResourceController
      def index
        @pages = Spree::Page.page(params[:page] || 1).per(50)
      end
    end
  end
end