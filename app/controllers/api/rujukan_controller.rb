class Api::RujukanController < ApplicationController
  def show
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}Rujukan/#{rujukan_params[:id]}", headers: get_headers)
    render json: response
  end

  def rujukan_params
    params.permit(:id)
  end
end
