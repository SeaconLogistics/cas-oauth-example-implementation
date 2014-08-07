Rails.application.config.middleware.use OmniAuth::Builder do
  provider :seaconlogistics,
           Rails.application.secrets.omniauth_provider_key,
           Rails.application.secrets.omniauth_provider_secret,
           setup: lambda { |env|
             env['omniauth.strategy'].options[:client_options].site = 'http://localhost:8080/cas'
             env['omniauth.strategy'].options[:client_options].authorize_url = 'http://localhost:8080/cas/oauth2.0/authorize'
             env['omniauth.strategy'].options[:client_options].token_url = 'http://localhost:8080/cas/oauth2.0/accessToken'
           }
end
