class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def create
    @song = Song.create(
      title: params[:title],
      stanza: params[:stanza],
      chorus: params[:chorus],
      key: params[:key],
    )
    render :show
  end
end
