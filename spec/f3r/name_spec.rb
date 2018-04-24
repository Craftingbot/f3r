RSpec.describe "Test Fake Name" do
  describe 'name in en-us' do
    it 'should have first_name and last_name' do
      faker = F3r::Faker.new('en-us')
      first_name = faker.name.split(' ')[0]
      last_name = faker.name.split(' ')[1]
      first_data = File.read("#{F3r::ROOT_PATH}/f3r/data/name/en-us/first_name", mode: 'r:UTF-8').split("\n")
      last_data = File.read("#{F3r::ROOT_PATH}/f3r/data/name/en-us/last_name", mode: 'r:UTF-8').split("\n")
      expect(first_data).to include first_name
      expect(last_data).to include last_name
    end
  end

  describe 'name in zh-cn' do
    it 'should have first_name and last_name' do
      faker = F3r::Faker.new('zh-cn')
      first_name = faker.name.split(' ')[0]
      last_name = faker.name.split(' ')[1]
      first_data = File.read("#{F3r::ROOT_PATH}/f3r/data/name/zh-cn/first_name", mode: 'r:UTF-8').split("\n")
      last_data = File.read("#{F3r::ROOT_PATH}/f3r/data/name/zh-cn/last_name", mode: 'r:UTF-8').split("\n")
      expect(first_data).to include first_name
      expect(last_data).to include last_name
    end
  end
end
