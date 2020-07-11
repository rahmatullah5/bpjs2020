class Api::Propinsi::Kabupaten::KecamatanController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}/Referensi/kecamatan/kabupaten/#{kabupaten_params[:kabupaten_id]}", headers: get_headers)
    render json: response
  end

  def kabupaten_params
    params.permit(:kabupaten_id)
  end
end
