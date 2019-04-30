CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGUUGG6XN7JL5E2CQZWMP3',
    google_storage_secret_access_key: 'us3tO8vXws3Fw/4aejlYH54gCPoSKJWKrDkNa5JX'
  }
  config.fog_directory = 'nucifera'
end