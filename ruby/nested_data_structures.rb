rio_olympics = {
	sports: {
		swimming: {
			venues: [ "Rio Aquatic Center", "Atlantic Ocean" ],
			events: {
				mens_freestyle: {
					medalists: {
						gold: {
							athlete: "Michael Phelps",
							country: "USA"
							},
						silver: {
							athlete: "Ryan Lockte",
							country: "USA"
							},
						bronze: {
							athlete: "Kyle Chalmers",
							country: "Australia"
						}
					},
					world_record: true
				},
				womens_freestyle: {
					medalists: {
						gold: {
							athlete: "Katie Ledecky",
							country: "USA"
							},
						silver: {
							athlete: "Lily King",
							country: "USA"
							},
						bronze: {
							athlete: "Yulia Efimova",
							country: "Russia"
						}
					},
					world_record: true
				}
			}
		},
		basketball: {
			venues: ["Rio Olympic Arena", "Playground"],
			medalists: {
				gold: {
					country: "USA",
					wins: 10,
					losses: 0
				},
				silver: {
					country: "Australia",
					wins: 8,
					losses: 2
				},
				bronze: {
					country: "Spain",
					wins: 6,
					losses: 3
				}
			},
			all_olympic_team: ["Demarcus Cousins", "Kyrie Irving", "Carmelo Anthony", "Matthew Delavedova", "Kevin Durant"]
		},
		gymnastics: {
			venues: ["Olympic Gymnastics Center", "Monkey Bars"],
			events: {
				womens_team: {
					medalists: {
						gold: "USA",
						silver: "China",
						bronze: "Russia"
					},
					overall_winner: "Simone Biles"
				},
				mens_team: {
					medalists: {
						gold: "USA",
						silver: "Russia",
						bronze: "China"
					},
					overall_winner: "Johnny Gymnastics"
				}
			}
		}
	},
	countries: {
		usa: {
			pretty_name: "USA",
			medal_count: {
				gold: 16,
				silver: 12,
				bronze: 16
			},
			athlete_count: 555
		},
		china: {
			pretty_name: "China",
			medal_count: {
				gold: 13,
				silver: 10,
				bronze: 14
			},
			athlete_count: 401
		},
		great_britain: {
			pretty_name: "Great Britain",
			medal_count: {
				gold: 7,
				silver: 8,
				bronze: 6
			},
			athlete_count: 372
		}
	}
}

p rio_olympics[:countries][:usa][:medal_count].values.each.reduce(:+)




















