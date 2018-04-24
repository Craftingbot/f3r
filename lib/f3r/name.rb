module F3r
  class Name
    attr_reader :lang, :file_path
    def initialize(lang='en-us')
      @lang = lang
      @file_path = "#{F3r::ROOT_PATH}/f3r/data/name/#{@lang}"
    end

    def generate
      "#{first_name} #{last_name}"
    end

    def first_name
      fetch_attribute('first_name')
    end

    def last_name
      fetch_attribute('last_name')
    end

    def fetch_attribute(attr)
      data_path = "#{ @file_path }/#{attr}"
      data = File.read(data_path, mode: 'r:UTF-8').split("\n")
      data.sample
    end
  end
end
