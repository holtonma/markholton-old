# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MarkHolton_session',
  :secret      => 'f2c9fe444241fb163ff9ce5d9c424a8ef937ad67140810eb5b838545b3dc3f5c4a1f504dea239872d0f62b70bb920de91cdeac785c0b12dc5ab753c27c399819'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
