# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_at-report_session',
  :secret      => '282797d701246036ad1c74e8e272493ea11a5d421bca1e90cbcf4eb1f95bc8f629857acf22a2f059ad19d5b74170a378f620a790e449a9456aaed172c90220d9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
