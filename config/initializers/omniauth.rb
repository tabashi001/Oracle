OmniAuth.config.logger = Rails.logger if Rails.env.development?

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '1454967231297065', '8cdc049ee6b948e12c1375c927254f06',:scope => 'email',
  # :info_fields => 'email'
 # provider :twitter, 'dNgN6ERxbGjNU9NA6NnOT3PZm', 'AHrhukzT4yT8Wh3rmqPdCnG0OoQplRtIzdC52PCAR4Vae9r8zE'
 # provider :linkedin, '81uvbjwty1ynl1', 'LuY8RjIOPG1iLpme'
 # provider :google_oauth2, '421349603636-accu1emtgohhvhbs7svucmmpmgbasn9j.apps.googleusercontent.com','FO434QIIzGcOPiGgtbiZVfoO'
end