class Api::PropinsiController < ApplicationController
  def index
    response = HTTParty.get("#{ENV['BPJS_BASE_URL']}Referensi/propinsi", headers: get_headers)
    render json: response
  end
end
