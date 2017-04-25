class PhotosController < ApplicationController
  def show
  # the params hash loos like this: {"the_id_number"=>"1"}

    id_number = params["the_id_number"]

    p = Photo.find(id_number)

    @the_caption = p.caption
    @the_image_url = p.source
    @created_at = p.created_at

    render("photos/show.html.erb")
  end

  def index
  # the params hash loos like this: {"the_id_number"=>"1"}

    @all_photos = Photo.all

    render("photos/index.html.erb")
  end

  # protect_from_forgery with: :exception
end
