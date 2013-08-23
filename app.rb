#!/usr/bin/env ruby


module Assets
  # #Sass/Compass Handler
  class Stylesheets < Sinatra::Base
    register CompassInitializer

    get '/stylesheets/:name.css' do
      content_type 'text/css', :charset => 'utf-8'
      sass params[:name].to_sym, Compass.sass_engine_options
    end
  end
end

 
class App < Sinatra::Application
  use Assets::Stylesheets

  configure do
    set :protection, :except => :frame_options

    set :views, Proc.new { File.join(root, 'app', 'views') }

    Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config/compass.rb'))
  end

  # ------------------------------------------
  # Helpers
  # ------------------------------------------
  helpers do
  end
  
  before do
  end
  

  # ------------------------------------------
  # Routes
  # ------------------------------------------
  get '/' do
    slim :index
  end

end

