class StoriesController < ApplicationController
  def index
    @stories = Story.all
    # variables passed to Google Maps
    @hash = Gmaps4rails.build_markers(@stories) do |story, marker|
      marker.lat story.latitude
      marker.lng story.longitude
      marker.infowindow story.name
      marker.json({
                      # name of story for marker/infowindow
                      title: story.name,
                      # value for showing in infowindow
                      lat: story.latitude
                  })
    end
  end

  def show
    @story = Story.find(params[:id])
  end
end
