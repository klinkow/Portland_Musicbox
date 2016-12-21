require("/Users/Guest/Desktop/portland_musicbox/portland_musicbox/lib/label.rb")
require("/Users/Guest/Desktop/portland_musicbox/portland_musicbox/lib/artist.rb")
require("/Users/Guest/Desktop/portland_musicbox/portland_musicbox/lib/album.rb")


labels = ['Kill Rock Stars', 'Tender Loving Empire', 'Good Cheer', 'Golden Brown', 'Virgin', 'Dischord', 'GOOD Music', 'Geographic North', 'Straight']
founded = [1991, 2005, 2014, 2016, 1972, 2004, 2007, 1969]
labels.each do |label|
   Label.create(name: label, est_date: founded[labels.index(label)])
end


@artist1 = Artist.create(name: "The Smashing Pumpkins")
artist1_id = @artist1.id
Album.create(name: "Siamese Dream", credits: "Siamese Dream is the second studio album by the American alternative rock band The Smashing Pumpkins, released on July 27, 1993 on Virgin Records. The album fused diverse influences such as shoegazing, dream pop, heavy metal and progressive rock", artist_id: artist1_id, label_id: Label.find_by(name: "Virgin").id, album_photo_name: "https://hackskeptic.files.wordpress.com/2014/08/siamese.jpg")

@artist2 = Artist.create(name: "Fugazi")
artist2_id = @artist2.id
Album.create(name: "End Hits", credits: "End Hits is the fifth studio album by the American post-hardcore band Fugazi. It was recorded at Inner Ear Studios from March 1997 to September 1997 and produced by Don Zientara & Fugazi. It was released on April 28, 1998 through Dischord Records.", artist_id: artist2_id, label_id: Label.find_by(name: "Dischord").id, album_photo_name: "http://cdn.shopify.com/s/files/1/0196/9358/products/End_Hits_1024x1024.jpg?v=1448028595")

@artist3 = Artist.create(name: "Pusha T")
artist3_id = @artist3.id
Album.create(name: "Darkest Before The Dawn", credits: "King Push – Darkest Before Dawn: The Prelude is the second studio album by American hip hop recording artist Pusha T. It was released on December 18, 2015, by GOOD Music and Def Jam Recordings.", artist_id: artist3_id, label_id: Label.find_by(name: "GOOD Music").id, album_photo_name: "https://images.rapgenius.com/3f72d8c2430990e8114a93b62c425f88.1000x1000x1.jpg")

@artist4 = Artist.create(name: "Jefre Cantu-Ledesma")
artist4_id = @artist4.id
Album.create(name: "In Summer", credits: "Jefre Cantu-Ledesma has described his latest work, a five-track cassette release called In Summer, as a “catalogue of photographs.” The songs are meant as snapshots of people, places, and interests he developed in 2015. It’s not an unusual thing to say about your music;  there are ways in which songs can crystallize a memory better than a photograph. Cantu-Ledesma’s work is wordless, often rhythmless, making it a strange vehicle for visuals, but In Summer somehow lives up it’s visual description, and it is possibly one of the most pastoral and emotionally evocative pieces of noise music that’s been released this year.", artist_id: artist4_id, label_id: Label.find_by(name: 'Geographic North').id, album_photo_name: "https://f4.bcbits.com/img/a3365961670_10.jpg")

@artist5 = Artist.create(name: "Captain Beefheart")
artist5_id = @artist5.id
Album.create(name: "Trout Mask Replica", credits: "Trout Mask Replica is the third album by Captain Beefheart and his Magic Band, released in June 1969. Produced by Beefheart's friend and former schoolmate Frank Zappa, it was originally released as a double album on Zappa's Straight Records label. Combining elements of R&B, garage rock, blues, avant-garde, free jazz and other genres of American music,[1] the album is regarded as an important work of experimental music and art rock.[2]", artist_id: artist5_id, label_id: Label.find_by(name: "Straight").id, album_photo_name: "http://img2-ak.lst.fm/i/u/ar0/88690231fafe417fb22aebc819005158")
