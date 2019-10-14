require_relative '../services/weather_service'

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w
      # Bonus: Converting Kelvin to Fahrenheit
      @temperature = (9.0 / 5) * (@w[:temperature] - 273) + 32
      city = City.new(
       name: @w[:city],
       landmark: "N/A",
       population: "N/A",
      )
      city.save
    end
    @name = params[:name]
  end

end
