class ApplicationMailer < ActionMailer::Base
  #default to: 'giri@tabashitechnoloy.com'
  layout 'mailer'
  def mail_method(fname,email,phoneno,msg)
    @name = fname
    @email = email
    @phoneno = phoneno
    @msg = msg
    mail(from: email,to:'support@eduoracle.com', subject: 'Contact Request')
  end
end
