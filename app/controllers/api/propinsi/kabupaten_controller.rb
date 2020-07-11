class Api::Propinsi::KabupatenController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}/Referensi/kabupaten/propinsi/#{propinsi_params[:propinsi_id]}", headers: get_headers)
    render json: response
  end

  def propinsi_params
    params.permit(:propinsi_id)
  end
end
