module F3r
  class Course
    include F3r::Generator
    attr_reader :lang, :file_path
    def initialize(lang='en-us')
      @lang = lang
      @file_path = "#{F3r::ROOT_PATH}/f3r/data/course/#{@lang}"
    end

    def generate
      "#{class_name}"
    end

    def class_name
      fetch_attribute('class_name')
    end

  end
end
