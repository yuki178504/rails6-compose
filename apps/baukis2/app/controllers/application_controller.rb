class ApplicationController < ActionController::Base
  layout :set_layout

  private def set_layout
    if params[:controller].present? && params[:controller].match(%r{\A(staff|admin|customer)/})
      Regexp.last_match[1]
    end
  end
end
