class SonglistsController < ApplicationController
  def index
    @songlists = Songlist.all
    render :index
  end
end
