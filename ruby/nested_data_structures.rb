

#bookshelf array shelves 
#hash: title author topic

bookshelf = [
	["book 1", "book 2","book 3"],
	["book 4", "book 5", "book 6"]
]
		 
p bookshelf[0]
p bookshelf[1]
p bookshelf[0][1]


bookshelf = [
	[first_class: {
        pretty_name: 'First Class',
        seat_info: {
            total_seats: 6,
            seats_available: 4
        },
        meals: [
            "Leg of Pampered Lamb", 
            "Kale Salad"
        ]
    },
    business_class: {
        pretty_name: 'Business Class',
        seat_info: {
            total_seats: 12,
            seats_available: 9
        },
        meals: [
            "Sustainably Cultivated Lobster with Housemade Butter", 
            "Kale Salad"
        ]
    },
    coach: {
        pretty_name: 'Coach',
        seat_info: {
            total_seats: 50,
            seats_available: 23
        },
        meals: []
    }
    ]
    

p bookshelf[0]