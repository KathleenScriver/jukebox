require "rails_helper"

describe "song index" do
  it "user can see all songs" do
    song_1 = Song.create!(title: "Super Freak", length: 303, play_count: 782)
    song_2 = Song.create!(title: "Thriller", length: 253, play_count: 73728)

    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
