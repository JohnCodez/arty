# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all 
Specialist.destroy_all 
Viewing.destroy_all 
Gallerylocation.destroy_all


5.times do 
User.create!(name: Faker::Movies::Lebowski.character, user_name: Faker::Internet.username, password: "pass123")
end 


Specialist.create!(name: "Chris Clark", bio: "", speciality: "Sculptures/Art History", image_path: "https://cdn.discordapp.com/attachments/768857014070673499/776103191758372864/suited1.jpg")

Specialist.create!(name: "Jomarie Polanco", bio: "", speciality: "19th Century Art", image_path: "https://cdn.discordapp.com/attachments/771014875438514206/775867175865024532/22323326_10156598362335828_1103503951_n.jpg")

Specialist.create!(name: "Steven Wu", bio: "", speciality: "Art", image_path: "https://cdn.discordapp.com/attachments/768853472325140541/776100201538650172/image0.png")

Specialist.create!(name: "Rebecca Robbins", bio: "", speciality: "Art History", image_path: "https://cdn.discordapp.com/attachments/767913828632887357/776160349648584714/7E34DAA0-6B93-461B-A7C8-94F96BB85BC3.jpeg")






# 5.times do 
# Specialist.create!(name: Faker::Movies::Departed.character, bio: Faker::Quotes::Shakespeare.hamlet_quote, speciality: Faker::Games::Zelda.game)
# end 

5.times do
Gallerylocation.create!(name: Faker::Games::Witcher.witcher, location: Faker::Games::Witcher.location)
 end 

# 5.times do
# Artwork.create!(name: Faker::Books::CultureSeries.book, size: "10 + 10", medium: "art", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)
# end 




    kehinde = Artwork.create!(name: "Obama" , artist_name: "Kehinde Wiley", size: "200 * 200", medium: "oil on canvas", artwork_path: "https://media.newyorker.com/photos/5a82035156b75c08a3e5b5b4/master/w_1600%2Cc_limit/Cunningham-Obama-Kehinde-Wiley.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    basquiat = Artwork.create!(name: "untitled" , artist_name: "Jean Michel Basquiat" , size: "140*160", medium: "oil on canvas", artwork_path: "https://cdn.taschen.com/media/images/1640/basquiat_xl_gb_3d_01141_1809271440_id_1206864.png", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    frida = Artwork.create!(name: "The Two Fridas", artist_name: "Frida Khalo", size: "60*80", medium: "oil on canvas", artwork_path: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcR-CUreC0itHZ0dRIXPbu4Su3lfJb5Wh00WqsysF1_rn6l2f9PjDRDzs7Vq8lbygnySkD_zVd-lf2vjgedTnAdK4JNkH9cu&usqp=CAE", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    minjun = Artwork.create!(name: "Noah's Ark", artist_name: "Yue Minjun", size: "40*60", medium: "print on paper", artwork_path: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRLPnrEFd-tEW7chh49iGpNPu_MHTrOxIMxyeyBvqk6UOvQepup5jDpe-GRyPpJncviGdFxHvzL0S9kLU82BLg_ZBIaQwmbvXtSCT0c7fI&usqp=CAE" , gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    avedon = Artwork.create!(name: "Dovima with the Elephants", artist_name: "Richard Avedon", size: "90*110", medium: "print on paper", artwork_path: "https://theimageflow.com/wp-content/uploads/2019/11/event-masters-photography-lecture-series-richard-avedon-3.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    chamberlain = Artwork.create!(name: "heap", artist_name: "John Chamberlain", size: "100*30", medium: "sculpture", artwork_path: "https://i.pinimg.com/564x/5b/5e/c0/5b5ec0d44405b014867267b0bbbe8a0a.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    prince = Artwork.create!(name: "nurse conflict", artist_name: "Richard Prince", size: "30*40", medium: "oil on canvas", artwork_path: "https://www.christies.com/img/LotImages/2016/NYR/2016_NYR_12156_0023A_000(richard_prince_nurse_elsa070142).jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    dali = Artwork.create!(name: "Cavalier avec bannière française", artist_name: "Salvador Dali", size: "30*40", medium: "print on paper", artwork_path: "https://sothebys-md.brightspotcdn.com/eb/3d/45c582a644158ab3bd0e9763e4e9/267n10460-bny93-02-a.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    chagall = Artwork.create!(name: "LA BRANCHE DE GUI OR LE RÊVE", artist_name: "Marc Chagall", size: "60*80", medium: "oil on canvas", artwork_path: "https://sothebys-md.brightspotcdn.com/dims4/default/3197ce4/2147483647/strip/true/crop/2000x1550+0+0/resize/1024x794!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2Fb4%2F71%2F255337624b4592b00137639390a3%2Fbgtrn.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    bacon = Artwork.create!(name: "Study for a Head", artist_name: "Francis Bacon", size: "60*80", medium: "oil on canvas", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/c37b4f2/2147483647/strip/true/crop/1692x2000+0+0/resize/330x390!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2Fc6%2F6c%2Fbd%2Fc8d6ee0e25855c558dab00c6b764701025ca8c72b23b272d9115b35f11%2F679n10069-b5mt5-df.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    rothko = Artwork.create!(name: "untitled1", artist_name: "Mark Rothko", size: "20*30", medium: "oil on canvas", artwork_path: "https://sothebys-md.brightspotcdn.com/6f/5f/83608bef495eb7db462dbfb19333/088n10461-b727g.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    monet = Artwork.create!(name: "Côte de Basse-Normandie", artist_name: "Claude Monet", size: "40*40", medium: "print on paper", artwork_path: "https://sothebys-md.brightspotcdn.com/dims4/default/d850771/2147483647/strip/true/crop/2000x1197+0+0/resize/1024x613!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2Fb9%2F64%2F922dac6d4f20a67dcaf663fb0b24%2F656n10460-bncl9-03-a.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    kaws = Artwork.create!(name: "Chum", artist_name: "Kaws", size: "10*12", medium: "sculpture", artwork_path: "https://sothebys-md.brightspotcdn.com/f3/16/3cced420402cb02f25ee1aa1527a/167n10462-bpms2.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    guston = Artwork.create!(name: "untitled (clock)", artist_name: "Philip Guston", size: "16*16", medium: "oil on canvas", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/3d81b4f/2147483647/strip/true/crop/4800x4443+0+0/resize/330x305!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2F63%2F3e%2F4842d54a4262a9a47f8936e899e2%2F2687ny8124-b7nzj.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    indiana = Artwork.create!(name: "Hope", artist_name: "Robert Indiana", size: "20*20", medium: "sculpture", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/10a9228/2147483647/strip/true/crop/3013x3205+0+0/resize/330x351!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2F36%2F62%2F81b471b447c88c4ddea7484e452a%2F5403contprvt-b7spb.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    hirst = Artwork.create!(name: "Hydroquinone", artist_name: "Damien Hirst", size: "30*40", medium: "acrylic on canvas", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/3d0d87d/2147483647/strip/true/crop/4253x3622+0+0/resize/330x281!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2F78%2F9d%2Fd2a015a8420ab76479f9f9623ed8%2F7721contprvt-bl6yf-a.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    gormley = Artwork.create!(name: "Expansion Field", artist_name: "Antony Gormley", size: "80*15", medium: "sculpture", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/f94e2f8/2147483647/strip/true/crop/1874x2658+0+0/resize/330x468!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2Fed%2Fbd%2F7eb71e2e4ddfa64f636690f9810c%2F9wb47-1.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    warhol = Artwork.create!(name: "Reigning Queens", artist_name: "Andy Warhol", size: "40*40", medium: "print on paper", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/42be3c1/2147483647/strip/true/crop/8417x10224+0+0/resize/330x400!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2Fd5%2F5c%2F94830b8e439e8c2064e472122e2d%2F8833contprvt-84yfw-combined.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    calder = Artwork.create!(name: "Lucioles", artist_name: "Alexander Calder", size: "40*40", medium: "art on canvas", artwork_path: "https://sothebys-com.brightspotcdn.com/dims4/default/0a8396c/2147483647/strip/true/crop/6447x4458+0+0/resize/330x228!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fdotcom%2F2b%2Fc6%2F0f8306e64e36a4828edb4c02b095%2F6937contprvt-bkpnc.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    wiley = Artwork.create!(name: "St. John the Baptist Preaching", artist_name: "Kehinde Wiley", size: "40*60", medium: "acrylic on canvas", artwork_path: "https://sothebys-md.brightspotcdn.com/dims4/default/e249e74/2147483647/strip/true/crop/1748x2000+0+0/resize/1024x1172!/quality/90/?url=http%3A%2F%2Fsothebys-brightspot.s3.amazonaws.com%2Fmedia-desk%2Fa4%2F91%2F7d8dfc4a4e11937a869abf5affd2%2F342n10462-bpcsr-01.jpg", gallerylocation_id: Gallerylocation.all.sample.id, specialist_id: Specialist.all.sample.id)

    

    5.times do 
        Viewing.create!(time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) , day: Faker::Date.forward(days: 23), artwork_id: Artwork.all.sample.id, user_id: User.all.sample.id, comments: Faker::Movies::BackToTheFuture.quote)
        end 