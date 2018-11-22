# Require our gem
require 'zenaton'

# Require our tasks and workflows
require './app/workflows/alphabet'
require './app/tasks/letter_incrementer'

# Setup the Zenaton client
require './config/initializers/zenaton.rb'

# Don't buffer when writing to stdout
STDOUT.sync = true
