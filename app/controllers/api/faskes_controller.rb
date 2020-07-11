class Api::FaskesController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}referensi/faskes/#{faskes_params[:nama]}/#{faskes_params[:jenis]}", headers: get_headers)
    render json: response
  end
  
  def faskes_params
    params.permit(:nama, :jenis)
  end
end
