require 'sinatra/base'
require('./controllers/application')
require('./controllers/buckit')
require('./controllers/account')
require('./models/account')
require('./models/buckit')

map ('/') { run BuckitController }
map('/account') {run AccountController}
