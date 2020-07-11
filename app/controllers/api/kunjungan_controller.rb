class Api::KunjunganController < ApplicationController
  def index
    response = HTTParty.get("https://dev-soa.bpjs-kesehatan.go.id/pcare-rest-v3.0/kunjungan/peserta/#{kunjungan_params[:no_kartu]}", headers: get_headers)
    render json: response
  end
  
  def kunjungan_params
    params.permit(:no_kartu)
  end
end
