class Api::PesertaController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}Peserta/nokartu/#{peserta_params[:no_kartu]}/tglSEP/#{peserta_params[:tgl_sep]}", headers: get_headers)
    render json: response
  end

  def peserta_params
    params.permit(:no_kartu, :tgl_sep)
  end
end
