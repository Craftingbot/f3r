RSpec.describe F3r::Faker do
  describe 'init with languages' do
    it 'locate language with default' do
      faker = F3r::Faker.new
      expect(faker.lang).to eq('en-us')
    end
    it 'locate language with file path' do
      faker = F3r::Faker.new('zh-cn')
      expect(faker.lang).to eq('zh-cn')
    end
  end
  describe '#method_missing for name' do
    it 'invoke name' do
      faker = F3r::Faker.new('zh-cn')
      expect(faker.name).not_to be_nil
    end
  end
end
