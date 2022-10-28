class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  # app/controllers/application_controller.rb

  def default_url_options
    { host: ENV["mauplant.herokuapp.com"] || "localhost:3000" }
  end

end
