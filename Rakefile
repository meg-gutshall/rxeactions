require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "Start a new Pry session in the terminal"
task :console do
  Pry.start
end

namespace :db do
  namespace :seed do
    Dir[File.join(File.dirname(__FILE__), "db/seeds", "*.rb")].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "Seed " + task_name + ", based on the file with the same name in `db/seeds/*.rb`"
      task task_name.to_sym => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end