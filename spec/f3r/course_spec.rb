RSpec.describe "Test Fake Course" do
  describe 'course in en-us' do
    it 'should have class_name' do
      faker = F3r::Faker.new('en-us')
      course_name = faker.course
      course_data = File.read("#{F3r::ROOT_PATH}/f3r/data/course/en-us/class_name", mode: 'r:UTF-8').split("\n")
      expect(course_data).to include course_name
    end
  end

  describe 'course in zh-cn' do
    it 'should have class_name' do
      faker = F3r::Faker.new('zh-cn')
      course_name = faker.course
      course_data = File.read("#{F3r::ROOT_PATH}/f3r/data/course/zh-cn/class_name", mode: 'r:UTF-8').split("\n")
      expect(course_data).to include course_name
    end
  end
end
