class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
    end

    def new
        @playlist = Playlist.new
    end 

    def create
        Playlist.create(playlist_params)
        redirect_to root_path
    end 

    private

    def playlist_params
        params.require(:playlist).permit(:name, :description, :link)
    end

end
