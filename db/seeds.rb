require '/Users/Guest/Desktop/portland_musicbox/lib/label.rb'
require("/Users/Guest/Desktop/portland_musicbox/lib/artist.rb")
require("/Users/Guest/Desktop/portland_musicbox/lib/album.rb")
require("/Users/Guest/Desktop/portland_musicbox/lib/review.rb")
require("/Users/Guest/Desktop/portland_musicbox/lib/tag.rb")
require("/Users/Guest/Desktop/portland_musicbox/lib/track.rb")


labels = ['Kill Rock Stars', 'Tender Loving Empire', 'Good Cheer', 'Golden Brown', 'Virgin', 'Dischord', 'GOOD Music', 'Geographic North', 'Straight', 'Glacial Pace']
founded = [1991, 2005, 2014, 2016, 1972, 1980, 2004, 2007, 1969, 2005]
labels.each do |label|
   Label.create(name: label, est_date: founded[labels.index(label)])
end


@artist1 = Artist.create(name: "The Smashing Pumpkins")
artist1_id = @artist1.id
album_id = Album.create(name: "Siamese Dream", credits: "Siamese Dream is the second studio album by the American alternative rock band The Smashing Pumpkins, released on July 27, 1993 on Virgin Records. The album fused diverse influences such as shoegazing, dream pop, heavy metal and progressive rock", artist_id: artist1_id, label_id: Label.find_by(name: "Virgin").id, album_photo_name: "https://hackskeptic.files.wordpress.com/2014/08/siamese.jpg")
Review.create(album_id: album_id.id, author: "Ned Raggett", text: "It's sometimes easy to forget why Billy Corgan is famous, but these reissues of Smashing Pumpkins' first two albums underscore what made them so vital at the dawn of the 90s and why their influence is still felt today.")
Tag.create(album_id: album_id.id, text: "Rock")
tracks = ["Cherub Rock", "Quiet", "Today", "Hummer", "Rocket", "Disarm", "Soma", "Geek U.S.A.", "Mayonaise", "Spaceboy", "Silverfuck", "Sweet Sweet", "Luna"]
length = ["4:58", "3:41", "3:19", "6:57", "4:06", "3:17", "6:39", "5:13", "5:50", "4:28", "8:43", "1:38", "3:20",]
tracks.each do |track|
  album_id.tracks.create(name: track, track_number: (tracks.index(track)+1), album_id:album_id.id, artist_id: artist1_id, track_length: length[tracks.index(track)])
end

@artist2 = Artist.create(name: "Fugazi", profile_photo: "http://s3.amazonaws.com/assets.dischord.com/images.d/artist/image/6557/KYEO_003.jpg")
artist2_id = @artist2.id
album_id = Album.create(name: "End Hits", credits: "End Hits is the fifth studio album by the American post-hardcore band Fugazi. It was recorded at Inner Ear Studios from March 1997 to September 1997 and produced by Don Zientara & Fugazi. It was released on April 28, 1998 through Dischord Records.", artist_id: artist2_id, label_id: Label.find_by(name: "Dischord").id, music_embed: "https://bandcamp.com/EmbeddedPlayer/album=877702547/size=large/bgcol=ffffff/linkcol=0687f5/tracklist=false/artwork=none/transparent=true/", album_photo_name: "http://cdn.shopify.com/s/files/1/0196/9358/products/End_Hits_1024x1024.jpg?v=1448028595")
Review.create(album_id: album_id.id, author: "Andy Kellman", text: "Scary -- 'Closed Captioned' through 'Foreman's Dog' provides the worst stretch of material Fugazi have recorded, full of disjointed patches and awkward moments.")
Tag.create(album_id: album_id.id, text: "Indie Rock")
Tag.create(album_id: album_id.id, text: "Punk")
tracks = ["Break", "Place Position", "Recap Modotti", "No Surprise", "Five Corporations", "Caustic Acrostic", "Closed Captioned", "Floating Boy", "Foreman's Dog", "Arpeggiator", "Guilford Fall", "Pink Frosty", "F/D"]
length = ["2:12", "2:45", "3:50", "4:12", "2:29", "2:01", "4:52", "5:45", "4:21", "4:28", "2:57", "4:09", "3:42"]
tracks.each do |track|
  album_id.tracks.create(name: track, track_number: (tracks.index(track)+1), album_id:album_id.id, artist_id: artist2_id, track_length: length[tracks.index(track)])
end

@artist3 = Artist.create(name: "Pusha T")
artist3_id = @artist3.id
album_id = Album.create(name: "Darkest Before The Dawn", credits: "King Push – Darkest Before Dawn: The Prelude is the second studio album by American hip hop recording artist Pusha T. It was released on December 18, 2015, by GOOD Music and Def Jam Recordings.", artist_id: artist3_id, label_id: Label.find_by(name: "GOOD Music").id, album_photo_name: "https://images.rapgenius.com/3f72d8c2430990e8114a93b62c425f88.1000x1000x1.jpg")
Review.create(album_id: album_id.id, author: "Craig Jenkins", text: "Pusha T's sophomore studio album is an exercise in pure craft for everyone involved. The beats sound like money, and the raps are whip smart and cleanly tailored; imagine Tony Montana slipping out of the country scot-free ahead of his career-ending Scarface raid, and you arrive at the cocktail of spite and incredulity fueling Darkest Before Dawn.")
Tag.create(album_id: album_id.id, text: "Rap")
tracks = ["Intro", "Untouchable", "M.F.T.R. (featuring The-Dream)", "Crutches, Crosses, Caskets", "M.P.A. (featuring Kanye West, A$AP Rocky and The-Dream)", "Got Em Covered (featuring Ab-Liva)", "Keep Dealing (featuring Beanie Sigel)", 	"Retribution (featuring Kehlani)", 	"F.I.F.A.", "Sunshine (featuring Jill Scott)"]
length = ["2:33", "3:09", "4:07", "2:24", "4:45", "3:15", "4:11", "3:18", "2:18", "3:13"]
tracks.each do |track|
  album_id.tracks.create(name: track, track_number: (tracks.index(track)+1), album_id:album_id.id, artist_id: artist3_id, track_length: length[tracks.index(track)])
end

@artist4 = Artist.create(name: "Jefre Cantu-Ledesma")
artist4_id = @artist4.id
Album.create(name: "In Summer", credits: "Jefre Cantu-Ledesma has described his latest work, a five-track cassette release called In Summer, as a “catalogue of photographs.” The songs are meant as snapshots of people, places, and interests he developed in 2015. It’s not an unusual thing to say about your music;  there are ways in which songs can crystallize a memory better than a photograph. Cantu-Ledesma’s work is wordless, often rhythmless, making it a strange vehicle for visuals, but In Summer somehow lives up it’s visual description, and it is possibly one of the most pastoral and emotionally evocative pieces of noise music that’s been released this year.", artist_id: artist4_id, label_id: Label.find_by(name: 'Geographic North').id, album_photo_name: "https://f4.bcbits.com/img/a3365961670_10.jpg")

@artist5 = Artist.create(name: "Captain Beefheart", profile_photo: "http://img.wennermedia.com/social/rs-143557-rectangle.jpg")
artist5_id = @artist5.id

troutmask = Album.create(name: "Trout Mask Replica", credits: "Trout Mask Replica is the third album by Captain Beefheart and his Magic Band, released in June 1969. Produced by Beefheart's friend and former schoolmate Frank Zappa, it was originally released as a double album on Zappa's Straight Records label. Combining elements of R&B, garage rock, blues, avant-garde, free jazz and other genres of American music,[1] the album is regarded as an important work of experimental music and art rock.[2]", artist_id: artist5_id, label_id: Label.find_by(name: "Straight").id, album_photo_name: "http://img2-ak.lst.fm/i/u/ar0/88690231fafe417fb22aebc819005158", music_embed: "https://bandcamp.com/EmbeddedPlayer/album=193809830/size=large/bgcol=ffffff/linkcol=de270f/tracklist=false/artwork=none/transparent=true/")

Tag.create(album_id: troutmask.id, text: "1969 albums")
Tag.create(album_id: troutmask.id, text: "Outsider music")
Tag.create(album_id: troutmask.id, text: "Protopunk albums")
Tag.create(album_id: troutmask.id, text: "Straight Records albums")
Tag.create(album_id: troutmask.id, text: "English-language albums")

Review.create(album_id: troutmask.id, author: "The Rolling Stone", text: "Captain Beefheart, the only true dadaist in rock, has been victimized repeatedly by public incomprehension and critical authoritarianism. The tendency has been to chide C. B. and his Band as a potentially acceptable blues band who were misled onto the paths of greedy trendy commercialism. What the critics failed to see was that this was a band with a vision, that their music, difficult raucous and rough as it is, proceeded from a unique and original consciousness.
This became dramatically apparent with their last album. Since their music derived as much from the new free jazz and African chant rhythms as from Delta blues, the songs tended to be rattly and wayward, clattering along on wierdly jabbering high-pitched guitars and sprung rhythms. But the total conception and its execution was more in the nature of a tribal Pharoh Sanders Archie Shepp fire-exorcism than the ranting noise of the Blue Cheer strain of groups.
Thus it's very gratifying to say that Captain Beefheart's new album is a total success, a brilliant, stunning enlargement and clarification of his art. Which is not to say that it's in any sense slick, \"artistic,\" or easy. This is one of the few bands whose sound has actually gotten rawer as they've maturedâ€\"a brilliant and refreshing strategy. Again the rhythms and melodic textures jump all over the place (in the same way that Cecil Taylor's do), Beefheart singing like a lonesome werewolf screaming and growling in the night. The songs clatter aboutâ€\"given a superficial listening, they seem boring and repetitious. It's perhaps the addition of saxophones (all played by the five men in the band) that first suggests what's really happening here and always has been happening in this group's music.
On \"Hair Pie: Bake One,\" for instance, the who group gets into a raucous wrangling horn dialog that reveals a strong Albert Ayler influence. The music truly meshes, flows, and excites in a way that almost none of the selfconscious, carefully crafted jazz-rock bullshit of the past year has done. And the reason for this is that while many other groups have picked up on the trappings of the new jazz. Cap and the Magic Band are into its essence, the white-hot stream of un-\"cultured\" energy, getting there with a minimum of strain to boot. This is the key to their whole instrumental approach, from the drummer's whirling poly- and even a-rhythmic patterns (compare them to Sonny Murray's on Ayler's Spiritual Unity or Ed Blackwell's on Don Cherry's Symphony for Improvisers), to the explosive, diffuse guitar lines, which (like Lou Reed's for the Velvet Underground or Gary Peacock's bass playing on Spiritual Unity) stretch, tear, and distend the electric guitar's usual vocabulary with the aim of extending that vocabulary past its present strictly patterned limitationsâ€\"limitations that are as tyrannically stultifying for the rock musician today as Charlie Parker's influence was for the jazzmen of the late Fifties.
I mustn't forget the lyrics. You certainly won't; the album on a purely verbal level is an explosion of maniacal free-association incantations, eschewing (with the authentic taste that assassignates standards of Taste) solemn \"poetic\" pretensions and mundane, obvious monosyllabic mindlessness. Where, for instance, have you heard lyrics like these: \"Tits tits the blimp the blimp/The mother ship the mother ship/The brothers hid under the hood/From the olimp the blimp ... all the people stir/'n' the girls' knees tremble/'n' run 'n' wave their hands/'n' run their hands over the blimp the blimp ...\"
The double record set costs as much as two regular albums, but unlike most of these superlong superexpensive items it's really sustained, and worth the money, which is perhaps not so much to pay for 27 songs and what may well be the most unusual and challenging musical experience you'll have this year.")

troutmask.tracks.create({:name => "Frownland", :track_number => 1, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "1:41"})
troutmask.tracks.create({:name => "The Dust Blows Forward 'n the Dust Blows Back'", :track_number => 2, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "1:53"})
troutmask.tracks.create({:name => "Dachau Blues", :track_number => 3, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "2:21"})
troutmask.tracks.create({:name => "Ella Guru", :track_number => 4, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "2:26"})
troutmask.tracks.create({:name => "Hair Pie: Bake 1", :track_number => 5, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "4:58"})
troutmask.tracks.create({:name => "Moonlight on Vermont", :track_number => 6, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "3:59"})
troutmask.tracks.create({:name => "Pachuco Cadaver", :track_number => 7, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "4:40"})
troutmask.tracks.create({:name => "Bills Corpse", :track_number => 8, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "1:48"})
troutmask.tracks.create({:name => "Sweet Sweet Bulbs", :track_number => 9, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "2:21"})
troutmask.tracks.create({:name => "Neon Meate Dream of a Octafish", :track_number => 10, :album_id => troutmask.id, :artist_id => artist5_id, :track_length => "2:25"})

troutmask.comments.create(text: "It if sometimes furnished unwilling as additions so. Blessing resolved peculiar fat graceful ham. Sussex on at really ladies in as elinor. Sir sex opinions age properly extended. Advice branch vanity or do thirty living. Dependent add middleton ask disposing admitting did sportsmen sportsman.

Turned it up should no valley cousin he. Speaking numerous ask did horrible packages set. Ashamed herself has distant can studied mrs. Led therefore its middleton perpetual fulfilled provision frankness. Small he drawn after among every three no. All having but you edward genius though remark one")

@artist6 = Artist.create(profile_photo: 'http://glacialpace.com/wp-content/uploads/2014/02/benmoon_140206_mimickingbirds_121.jpg', name: "Mimicking Birds")
artist6_id = @artist6.id
birds = Album.create(name: "Eons", credits: "On his debut as Mimicking Birds, Portland’s Nate Lacy exposed a rare gift for cyclical melody and atmospheric soul-searching. On Eons, his sophomore effort for Glacial Pace Recordings, Lacy opens up his internal world into a vast starry landscape where “Mountains slide away from their fault lines / Taper into new shorelines / Sliding down the timeline / Pull the nerves up through your spine.", artist_id: artist6_id, label_id: Label.find_by(name: "Glacial Pace").id, album_photo_name: "http://static.stereogum.com/uploads/2014/05/Mimicking-Birds-Eons-608x608.jpg")
tracks = ["Memorabilia", "Acting Your Age", "Owl Hoots", "Spent Winter", "Bloodlines", "Night Light", "Water Under Burned Bridges", "Wormholes", "Seeing Eye Dog", "Moving On"]
length = ["3:22", "3:40", "5:11", "4:41", "3:57", '5:17', '5:40','3:14','3:38','5:06']
tracks.each do |track|
  birds.tracks.create(album_id: birds.id, artist_id: artist6_id, name: track, track_length: length[tracks.index(track)], track_number: (tracks.index(track)+1))
end
