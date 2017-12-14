require 'rails_helper'
require 'unit_helper'
require 'app/business/photos_builder'

describe PhotosBuilder do
  subject do
    described_class.new(Photo)
  end

  context '#json_photos' do
    it 'should get a json with 10 images' do
      expect(subject.json_photos['images'].length).to eq(10)
    end
  end

  context '#create_photos' do
    it 'should create 10 Photo objects' do
      subject.create_photos

      expect(Photo.count).to eq(10)
    end
  end
end
