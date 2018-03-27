class WeathersController < ApplicationController
  def index
    response = Unirest.get("http://api.wunderground.com/api/#{ENV['API_KEY']}/conditions/q/NY/New_York.json")
    render json: response.body
  end
end
