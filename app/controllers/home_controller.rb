class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json do
        sleep_time = (1..3).to_a.sample
        logger.info { "Will sleep #{sleep_time}" }
        sleep sleep_time
        render json: { text: "Welcome in the world of tomorrow!", sleep_time: sleep_time }
      end
    end
  end

  def subdomain
  end

end
