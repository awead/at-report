  ActiveRecord::Base.establish_connection(
    :adapter =>  'mysql',
    :database => 'atk',
    :host=>      'eddie.rockhall.org',
    :username => 'atkreporter',
    :password => 'reporting on our archivists'
  )
