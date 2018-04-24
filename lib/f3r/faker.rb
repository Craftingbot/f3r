
module F3r
  class Faker
    attr_reader :lang
    def initialize(lang='en-us')
      @lang = lang
    end

    def method_missing(name, *args)
      subject = Object.const_get("F3r::#{camelize(name.to_s)}").new(@lang)
      subject.generate
    end

    def camelize(str)
      str.split('_').map{|w| w.capitalize}.join
    end
  end
end
