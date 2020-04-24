# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


movies_array = [
  {
    title: "The Shawshank Redemption",
    plot: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency."
  },
  {
    title: "The Godfather",
    plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."
  },
  {
    title: "The Godfather II",
    plot: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate."
  },
  {
    title: "The Dark Knight",
    plot: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice."
  },
  {
    title: "12 Angry Men",
    plot: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence."
  },
  {
    title: "Schindler's List",
    plot: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis."
  },
  {
    title: "The Lord of the Rings: The Return of the King",
    plot: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring."
  },
  {
    title: "Pulp Fiction",
    plot: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption."
  },
  {
    title: "The Good, the Bad and the Ugly",
    plot: "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery."
  },
  {
    title: "The Lord of the Rings: The Fellowship of the Ring",
    plot: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."
  },
]

seasons_with_episodes_array = [
  {
    title: "Money Heist S1",
    plot: "An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.",
    episodes: [
      {
        number: 1,
        title: "Efectuar lo acordado",
        plot: "The Professor recruits a young female robber and seven other criminals for a grand heist, targeting the Royal Mint of Spain."
      },
      {
        number: 2,
        title: "Imprudencias letales",
        plot: "Hostage negotiator Raquel makes initial contact with the Professor. One of the hostages is a crucial part of the thieves' plans."
      },
      {
        number: 3,
        title: "Errar al disparar",
        plot: "Police grab an image of the face of one of the robbers. Raquel is suspicious of the gentleman she meets at a bar."
      },
      {
        number: 4,
        title: "Caballo de Troya",
        plot: "Raquel is adversely affected by a personal crisis with her ex-husband. The hostages are afraid of the sound of gunshots they heard. Thieves argue among themselves."
      },
      {
        number: 5,
        title: "El día de la marmota",
        plot: "A sudden development in the investigation and a mistake made by one of the thieves confronts the Professor with a serious risk that could lead to his identity being revealed."
      },
      {
        number: 6,
        title: "La cálida Guerra Fría",
        plot: "The problems inside and outside the National Currency and Stamp Factory are growing. The biggest robbery in history does not allow any mistakes and each time, the tension and fear is rising. What opportunities are there for everything to go well?"
      },
      {
        number: 7,
        title: "Refrigerada inestabilidad",
        plot: "A new police plan will make Raquel enter the National Factory of Currency and Stamp, right at the peak of the biggest heist in history. Berlin will be responsible for being the most extravagant host that the inspector has ever seen. What is their plan"
      },
      {
        number: 8,
        title: "Tú lo has buscado",
        plot: "Despite the setbacks and to keep more than 60 hours locked up, the mood of the robbers does not decline. The printing of tickets can not go better, surpassing the figures that had been marked and the construction of the tunnel initiates a new phase that will facilitate the perforation. In the police tent, however, the weather has become rare after the assault on the pharmacy. Suspicion begins to settle in Raquel and Angel, both distrust each other despite having been more than partners. Neither policemen nor robbers know that a leak is being planned among the hostages..."
      },
      {
        number: 9,
        title: "El que la sigue la consigue",
        plot: "The professor talks with Raquel's mother on stressful conditions. Darphanede wants thieves to choose between money and freedom from the hostages."
      }
    ]
  },
  {
    title: "Westworld S1",
    plot: "Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence.",
    episodes: [
      {
        number: 1,
        title: "The Original",
        plot: "The park staff begin to notice strange behavior from the hosts; A mysterious Man in Black roams the park, wreaking havoc."
      },
      {
        number: 2,
        title: "Chestnut",
        plot: "Two guests arrive at the park with different expectations; Maeve's emotions are tweaked; The Man in Black seeks help from a condemned man."
      },
      {
        number: 3,
        title: "The Stray",
        plot: "Elsie and Stubbs search for a missing host; Teddy gets a new backstory; Bernard investigates the origins of madness and hallucinations within the hosts."
      },
      {
        number: 4,
        title: "Dissonance Theory",
        plot: "Dolores joins William and Logan on a bounty hunt; The Man in Black makes a significant discovery; Ford and Theresa discuss the park's future."
      },
      {
        number: 5,
        title: "Contrapasso",
        plot: "Dolores, William and Logan reach Pariah, and are recruited for a dangerous mission; The Man in Black meets an unlikely ally."
      },
      {
        number: 6,
        title: "The Adversary",
        plot: "Maeve charms Felix; Elsie discovers evidence that could point to sabotage; Teddy and the Man in Black conflict with a garrison."
      },
      {
        number: 7,
        title: "Trompe L'Oeil",
        plot: "Dolores, William and Lawrence journey into treacherous terrain; Maeve presents her demand; Bernard considers his next move."
      },
      {
        number: 8,
        title: "Trace Decay",
        plot: "Bernard struggles with a mandate; Teddy is troubled by dark memories; Maeve looks to change her script."
      },
      {
        number: 9,
        title: "The Well-Tempered Clavier",
        plot: "Dolores and Bernard reconnect with their pasts; Maeve makes a bold proposition to Hector; Teddy finds enlightenment, at a price."
      },
      {
        number: 10,
        title: "The Bicameral Mind",
        plot: "Ford unveils his bold new narrative; Dolores embraces her identity; Maeve sets her plan in motion."
      }
    ]
  },
  {
    title: "Game of Thrones S1",
    plot: "Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.",
    episodes: [
      {
        number: 1,
        title: "Winter Is Coming",
        plot: "Eddard Stark is torn between his family and an old friend when asked to serve at the side of King Robert Baratheon; Viserys plans to wed his sister to a nomadic warlord in exchange for an army." 
      },
      {
        number: 2,
        title: "The Kingsroad",
        plot: "While Bran recovers from his fall, Ned takes only his daughters to King's Landing. Jon Snow goes with his uncle Benjen to the Wall. Tyrion joins them."
      },
      {
        number: 3,
        title: "Lord Snow",
        plot: "Jon begins his training with the Night's Watch; Ned confronts his past and future at King's Landing; Daenerys finds herself at odds with Viserys."
      },
      {
        number: 4,
        title: "Cripples, Bastards, and Broken Things",
        plot: "Eddard investigates Jon Arryn's murder. Jon befriends Samwell Tarly, a coward who has come to join the Night's Watch."
      },
      {
        number: 5,
        title: "The Wolf and the Lion",
        plot: "Catelyn has captured Tyrion and plans to bring him to her sister, Lysa Arryn, at the Vale, to be tried for his, supposed, crimes against Bran. Robert plans to have Daenerys killed, but Eddard refuses to be a part of it and quits."
      },
      {
        number: 6,
        title: "A Golden Crown",
        plot: "While recovering from his battle with Jaime, Eddard is forced to run the kingdom while Robert goes hunting. Tyrion demands a trial by combat for his freedom. Viserys is losing his patience with Drogo."
      },
      {
        number: 7,
        title: "You Win or You Die",
        plot: "Robert has been injured while hunting and is dying. Jon and the others finally take their vows to the Night's Watch. A man, sent by Robert, is captured for trying to poison Daenerys. Furious, Drogo vows to attack the Seven Kingdoms."
      },
      {
        number: 8,
        title: "The Pointy End",
        plot: "The Lannisters press their advantage over the Starks; Robb rallies his father's northern allies and heads south to war; The White Walkers attack the Wall; Tyrion returns to his father with some new friends."
      },
      {
        number: 9,
        title: "Baelor",
        plot: "Robb goes to war against the Lannisters. Jon finds himself struggling on deciding if his place is with Robb or the Night's Watch. Drogo has fallen ill from a fresh battle wound. Daenerys is desperate to save him."
      },
      {
        number: 10,
        title: "Fire and Blood",
        plot: "Robb vows to get revenge on the Lannisters. Jon must officially decide if his place is with Robb or the Night's Watch. Daenerys says her final goodbye to Drogo."
      }

    ]
  },
  {
    title: "Grey's Anatomy S1",
    plot: "A drama centered on the personal and professional lives of five surgical interns and their supervisors.",
    episodes: [
      {
        number: 1,
        title: "A Hard Day's Night",
        plot: "The first shift for new surgical interns Meredith, Cristina, Izzie, George and Alex proves eventful and backbreaking."
      },
      {
        number: 2,
        title: "The First Cut Is the Deepest",
        plot: "A rape victim is admitted, who managed to hold onto part of her attacker; Izzie has difficulty with a patient who cannot speak English; Meredith becomes concerned about a sick baby."
      },
      {
        number: 3,
        title: "Winning a Battle, Losing the War",
        plot: "Izzie and Cristina are assigned a close-to-brain-dead John Doe who may be a viable candidate for organ donation, and helpful to George's patient, who needs a new liver. Meanwhile, Meredith and Alex butt heads over a patient of their own."
      },
      {
        number: 4,
        title: "No Man's Land",
        plot: "Alex uses Izzie's modeling against her, and her last ad causes a patient to reject her care. Meredith finds parallels between a patient and her mother, and Christina must deal with a hospital-savvy patient."
      },
      {
        number: 5,
        title: "Shake Your Groove Thing",
        plot: "Meredith worries she did something wrong during a heart bypass, an error in a past procedure is discovered, putting a staff member's conduct under scrutiny, while a party thrown by Izzie to introduce her boyfriend becomes a fiasco."
      },
      {
        number: 6,
        title: "If Tomorrow Never Comes",
        plot: "A woman with a massive tumor is admitted, with all the surgeons required to scrub in. In their absence, Meredith is assigned a patient with Parkinson's and, because Alex's pager is not working, Izzie is left in charge of the floor herself."
      },
      {
        number: 7,
        title: "The Self-Destruct Button",
        plot: "Izzie and George find out about Meredith and Derek, while Cristina makes a discovery of her own. George thinks an anesthesiologist is drinking on the job, and Meredith deals with a young girl who has had illegal surgery."
      },
      {
        number: 8,
        title: "Save Me",
        plot: "Meredith wants to learn more about Derek, but he remains cagey. Meanwhile, a supposedly psychic patient proves bothersome, Alex must convince a young girl to agree to a life saving operation, and Cristina is conflicted about her pregnancy."
      },
      {
        number: 9,
        title: "Who's Zoomin' Who?",
        plot: "George finally gets laid but gets syphilis. It's rampant among staff. Surgeon Webber is losing his sight. He wants Shepherd to operate secretly. A male patient has an ovary. A lifesaving autopsy's performed without consent."
      }
    ]
  },
  {
    title: "The Mandalorian S1",
    plot: "The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.",
    episodes: [
      {
        number: 1,
        title: "Chapter 1: The Mandalorian",
        plot: "A Mandalorian bounty hunter tracks a target for a well-paying, mysterious client."
      },
      {
        number: 2,
        title: "Chapter 2: The Child",
        plot: "Target in hand, the Mandalorian must now contend with scavengers."
      },
      {
        number: 3,
        title: "Chapter 3: The Sin",
        plot: "The battered Mandalorian returns to his client for his reward."
      },
      {
        number: 4,
        title: "Chapter 4: Sanctuary",
        plot: "The Mandalorian teams up with an ex-soldier to protect a farming village from raiders."
      },
      {
        number: 5,
        title: "Chapter 5: The Gunslinger",
        plot: "On a familiar desert planet, the Mandalorian helps a rookie bounty hunter who is in over his head."
      },
      {
        number: 6,
        title: "Chapter 6: The Prisoner",
        plot: "The Mandalorian is part of a crew of mercenaries springing a convict from a prison ship."
      },
      {
        number: 7,
        title: "Chapter 7: The Reckoning",
        plot: "An old contact extends an invitation for the Mandalorian to make peace with his enemies."
      },
      {
        number: 8,
        title: "Chapter 8: Redemption",
        plot: "The Mandalorian and his allies come to know their true enemy, who already knows much about them."
      }
    ]
  }
]

purchase_options = PurchaseOption.create!([
  {
    price: 1.99,
    quality: :sd
  },
  {
    price: 2.25,
    quality: :sd
  },
  {
    price: 2.99,
    quality: :hd
  },
  {
    price: 3.25,
    quality: :sd
  },
  {
    price: 3.99,
    quality: :hd
  },
  {
    price: 4.99,
    quality: :hd
  }
])

users = Array.new(5) do
  User.create!(email: Faker::Internet.email)
end

movies = Movie.create!(movies_array)

movies.each do |movie|
  [
    PurchaseOption.sd_quality.sample,
    PurchaseOption.hd_quality.sample
  ].each do |po|
    VideoContentPurchaseOption.create(purchase_option: po, video_content: movie)
  end
end

seasons = seasons_with_episodes_array.map do |season|
  s = Season.create!(season.except(:episodes))
  season[:episodes].map do |episode|
    Episode.create!(episode.merge({ season: s }))
  end
  [
    PurchaseOption.sd_quality.sample,
    PurchaseOption.hd_quality.sample
  ].each do |po|
    VideoContentPurchaseOption.create(purchase_option: po, video_content: s)
  end
  s
end

users.each do |user|
  Random.rand(5).times do
    purchase_item = VideoContentPurchaseOption.all.sample
    if user.purchases.where(video_content_purchase_option_id: purchase_item.id).empty?
      Purchase.create!(user: user, video_content_purchase_option: purchase_item)
    end
  end
end
