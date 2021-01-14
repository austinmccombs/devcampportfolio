module SetCopyright
    extend ActiveSupport::Concern

    included do 
        before_action :set_copyright
    end

    def set_copyright
        @copyright = CompanyViewTool::Renderer.copyright 'Austin Mccombs', 'All rights reserved'
      end
end     

module CompanyViewTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
    end
  end