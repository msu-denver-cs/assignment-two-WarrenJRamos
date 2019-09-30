Car.create!([
  {make_title: "Toyota", model_title: "4Runner", vin_number: 900, make_id: 2},
  {make_title: "Toyota", model_title: "Rav4", vin_number: 901, make_id: 1},
  {make_title: "Ford", model_title: "Explorer", vin_number: 902, make_id: 2},
  {make_title: nil, model_title: "Arteon", vin_number: 904, make_id: 3},
  {make_title: nil, model_title: "Sorento", vin_number: 905, make_id: 5},
  {make_title: nil, model_title: "HR-V", vin_number: 906, make_id: 4}
])
CarPart.create!([
  {car_id: 1, part_id: 2},
  {car_id: 2, part_id: 7},
  {car_id: 3, part_id: 7},
  {car_id: 3, part_id: 3},
  {car_id: 1, part_id: 6},
  {car_id: 2, part_id: 4},
  {car_id: 4, part_id: 1},
  {car_id: 4, part_id: 5},
  {car_id: 1, part_id: 8},
  {car_id: 2, part_id: 8},
  {car_id: 3, part_id: 11},
  {car_id: 5, part_id: 9},
  {car_id: 6, part_id: 1},
  {car_id: 6, part_id: 4},
  {car_id: 6, part_id: 5},
  {car_id: 6, part_id: 7},
  {car_id: 6, part_id: 12}
])
Make.create!([
  {name: "Toyota", country: "Japan"},
  {name: "Ford", country: "USA"},
  {name: "Volkswagen", country: "Germany"},
  {name: "Honda", country: "Japan"},
  {name: "Kia", country: "Korea"},
  {name: "Maserati", country: "Italian"}
])
Part.create!([
  {part_name: "Amazing Door"},
  {part_name: "Bad Door"},
  {part_name: "Funny Item"},
  {part_name: "AMAZING Tires"},
  {part_name: "MEDIOCRE Tires"},
  {part_name: "Shiny Wheels"},
  {part_name: "Wooden Wheels"},
  {part_name: "Toyota Logo"},
  {part_name: "Kia Logo"},
  {part_name: "Volkswagen Logo"},
  {part_name: "Ford Logo"},
  {part_name: "Honda Logo"}
])
