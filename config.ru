require 'sinatra/base'
require 'avatars.io'
require('./controllers/application')
require('./controllers/buckit')
require('./controllers/account')
require('./models/account')
require('./models/buckit')

map('/') { run BuckitController }
map('/account') {run AccountController}
