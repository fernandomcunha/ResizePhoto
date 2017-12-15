class PhotosController < ApplicationController
  def index
    @collection = Photo.all
  end
end
