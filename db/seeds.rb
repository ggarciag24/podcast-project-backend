
Topic.destroy_all()
sports = Topic.find_or_create_by(name: "Sports")

Podcast.destroy_all()
garyv = Podcast.find_or_create_by(name: "GaryV", image: "https://upload.wikimedia.org/wikipedia/commons/c/cd/Gary_Vaynerchuk_public_domain.jpg", description: "Realistic Motivation", topic_id: sports.id)

PersonalNote.destroy_all()
firstNote = PersonalNote.find_or_create_by(episode: "all of them", rating: "10/10", explanation: "His podcast has value", podcast_id: garyv.id)
secondNote = PersonalNote.find_or_create_by(episode: "last one", rating: "10/10", explanation: "value", podcast_id: garyv.id)
