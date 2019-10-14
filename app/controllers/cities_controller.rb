class CitiesController < ApplicationController

  def viewCities
    render '/cities/viewCities'
  end

  def newCity
    render '/cities/newCity'
  end

  def postCreateCity
    # Ensure that the city parameter exists.
    if params.has_key?(:city)
      # Ensure that the city is not a duplicate.
      if not City.all().has_key?(params[:city].to_sym)
        city = City.new(
         name: params[:city],
         landmark: params[:landmark],
         population: params[:population],
        )
        city.save
      end
    end
    render '/cities/viewCities'
  end

  def getUpdateCity
    render '/cities/updateCity'
  end

  def postUpdateCity
    # Update city if it exists.
    if params.has_key?(:city)
      if City.all().has_key?(params[:city].to_sym)
        city = City.all()[params[:city].to_sym]
        city.update(params)
      end
    end
    render '/cities/viewCities'
  end

end
