require "f3r/version"
require "f3r/generator"

module F3r
  autoload :Faker, 'f3r/faker'
  autoload :Name, 'f3r/name'
  autoload :Course, 'f3r/course'

  ROOT_PATH = File.expand_path('..', __FILE__)

end
