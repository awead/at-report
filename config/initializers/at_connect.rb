  ActiveRecord::Base.establish_connection(
    :adapter =>  'mysql',
    :database => 'atk',
    :host=>      'localhost',
    :username => 'railsuser',
    :password => 'password'
  )
