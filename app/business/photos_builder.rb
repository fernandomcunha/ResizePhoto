class PhotosBuilder
  include HTTParty

  base_uri 'http://54.152.221.29'

  def initialize(repository)
    @repository = repository
  end

  def json_photos
    self.class.get('/images.json').parsed_response
  end

  def create_photos
    json_photos['images'].each do |image|
      @repository.create(url: image['url'])
    end
  end
end
