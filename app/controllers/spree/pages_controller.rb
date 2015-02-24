module Spree
  class PagesController < StoreController
    def show
      @page = Spree::Page.visible.friendly.find(params[:id])
      @title = @page.title
    end
  end
end