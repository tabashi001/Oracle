OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '953457601477863', '0628699ab65cd8458c667717ee3f6df6', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end