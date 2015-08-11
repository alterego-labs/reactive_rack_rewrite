$TESTING = true
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

$CODECLIMATE_REPO_TOKEN = ''

require 'active_record'

DB_FILE = 'tmp/test_db'

FileUtils.mkdir_p File.dirname(DB_FILE)
FileUtils.rm_f DB_FILE

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: DB_FILE
ActiveRecord::Base.connection.execute 'CREATE TABLE reactive_rack_rewrite_rules (id INTEGER NOT NULL PRIMARY KEY, method VARCHAR(125), from_pattern VARCHAR(125), to_pattern VARCHAR(125))'

require 'rspec/its'
require 'reactive_rack_rewrite'
require 'codeclimate-test-reporter'

require 'pry-nav'

CodeClimate::TestReporter.start

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }


RSpec.configure do |config|
  config.mock_with :rspec

  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.order = 'random'
end

