class Api::HistoryPelayananController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}monitoring/HistoriPelayanan/NoKartu/#{history_pelayanan_params[:no_kartu]}/tglAwal/#{history_pelayanan_params[:tgl_awal]}/tglAkhir/#{history_pelayanan_params[:tgl_akhir]}", headers: get_headers)
    render json: response
  end
  
  def history_pelayanan_params
    params.permit(:no_kartu, :tgl_awal, :tgl_akhir)
  end
end
