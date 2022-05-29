require 'rails_helper'

describe Song do 
  it { should belong_to(:album) }
  # it { should validate_presence_of :name }
  # it { should validate_length_of(:name).is_at_most(100) }

  # create callback for song class
  it("titleizes the name of a song") do
    album = Album.create({name: "giant steps", genre: "jazz"})
    song = Song.create({name: "Those Some Big Steps" , album_id: album.id})
    expect(song.name()).to(eq("Those Some Big Steps"))
  end
end
