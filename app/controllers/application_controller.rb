class ApplicationController < ActionController::Base
  def get_headers
    timestamp = Time.now.to_i.to_s
    headers = {
      "X-signature": Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'),  ENV['BPJS_PASSWORD'], "#{ENV['BPJS_ID']}&#{timestamp}")).strip,
      "X-cons-id": ENV['BPJS_ID'],
      "X-timestamp": timestamp,
    }
  end
end
