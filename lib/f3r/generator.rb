module F3r::Generator
  def file_path
    @file_path
  end

  def fetch_attribute(attr)
    data_path = "#{ file_path }/#{attr}"
    data = File.read(data_path, mode: 'r:UTF-8').split("\n")
    data.sample
  end
end
