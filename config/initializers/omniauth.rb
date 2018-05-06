OmniAuth.config.logger = Rails.logger if Rails.env.development?

Rails.application.config.middleware.use OmniAuth::Builder do
 	provider :facebook, '2016498005284423', 'd2845bf3bcb6371121f73c101d75433',:scope => 'email',:info_fields => 'name,email'
 	provider :twitter, 'zpiLnCMH6xIxs0BRHedsvmIx1','5c9ZLVMhCQP5Y2uIwMQA0lO2cxUt7pP9mWmlaZKFctRteDeAe4',:scope => 'email',:info_fields => 'name,email'
 	provider :google_oauth2,'124178006316-jl6n4tlcvtp2ros9oijbviq8dger8eid.apps.googleusercontent.com','E8tAUaCNbn6Q04hkWeMupkCc',:scope => 'email',:info_fields => 'name,email'
end