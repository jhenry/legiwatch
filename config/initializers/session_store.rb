# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_legiwatch_session',
  :secret      => 'cfd1e1905fb681b8b45c1d18277d36c2c17a80c17a6401a3e45fd5da59bee16da6ae6deb67a890e97aad06ba3cf08775db9118ec1809d0424b62cf12b2034d65'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
