class WeathersController < ApplicationController
  def index
    response = Unirest.get("http://api.wunderground.com/api/14a202a6d9f9e6e8/conditions/q/NY/New_York.json")
    render json: response.body
  end
end
