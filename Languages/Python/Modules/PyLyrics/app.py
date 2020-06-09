# Import the PyLyrics module
from PyLyrics import PyLyrics as pyl

# Get all Beyonce albums. Replace name for your artist
# Returns an array of albums
albums = pyl.getAlbums(singer="Beyonce")

# Select one album and get all the tracks using "tracks" method
songs = albums[0].tracks()
with open("lyrics.txt") as file:
    print(songs[0])
    file.close()