require 'pathname'

root_path = Pathname.new('..').expand_path(File.dirname(__FILE__))

Dir[File.join(root_path, "db", "seeds", "*.rb")].sort.each do |seed|
  load seed
end