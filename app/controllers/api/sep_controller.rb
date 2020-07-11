class Api::SepController < ApplicationController
  def show
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}SEP/#{sep_params[:id]}", headers: get_headers)
    render json: response
  end

  def sep_params
    params.permit(:id)
  end
end
