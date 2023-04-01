class ApplicationController < ActionController::Base
  rescue_from Exception do |exception|
    Rails.logger.fatal("#{exception.message} ----- #{exception.backtrace}")
    render file: "#{Rails.root}/public/500.html", layout: false
  end
end
