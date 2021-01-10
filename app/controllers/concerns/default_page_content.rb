module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end
  
    def set_page_defaults
      @page_title = "| Austin McCombs |"
      @seo_keywords = "Austin McCombs' Portfolio"
    end
end