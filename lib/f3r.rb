require "f3r/version"

module F3r
  autoload :Faker, 'f3r/faker'
  autoload :Name, 'f3r/name'

  ROOT_PATH = File.expand_path('..', __FILE__)

end
