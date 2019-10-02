Car.create!([
  {model_title: "Rav4", vin_number: 1000, make_id: 1},
  {model_title: "4Runner", vin_number: 1001, make_id: 1},
  {model_title: "Tiguan", vin_number: 1002, make_id: 2},
  {model_title: "Explorer", vin_number: 1003, make_id: 4},
  {model_title: "Sorento", vin_number: 1004, make_id: 6},
  {model_title: "Civic", vin_number: 1005, make_id: 5}
])
CarPart.create!([
  {car_id: 1, part_id: 1},
  {car_id: 1, part_id: 2},
  {car_id: 1, part_id: 3},
  {car_id: 2, part_id: 1},
  {car_id: 2, part_id: 3},
  {car_id: 3, part_id: 2},
  {car_id: 4, part_id: 6},
  {car_id: 4, part_id: 7},
  {car_id: 4, part_id: 8},
  {car_id: 5, part_id: 2},
  {car_id: 5, part_id: 5},
  {car_id: 5, part_id: 9},
  {car_id: 6, part_id: 1},
  {car_id: 6, part_id: 2},
  {car_id: 6, part_id: 3},
  {car_id: 6, part_id: 4},
  {car_id: 6, part_id: 5},
  {car_id: 6, part_id: 6},
  {car_id: 6, part_id: 7}
])
Make.create!([
  {name: "Toyota", country: "USA"},
  {name: "Volkswagen", country: "Germany"},
  {name: "Kia", country: "South Korea"},
  {name: "Ford", country: "USA"},
  {name: "Honda", country: "Japan"},
  {name: "Maserati", country: "Italian"}
])
Part.create!([
  {part_name: "AMAZING Tires"},
  {part_name: "MEDIOCRE Tires"},
  {part_name: "BAD Tires"},
  {part_name: "Engine"},
  {part_name: "Radiator"},
  {part_name: "Electric Battery"},
  {part_name: "Alternator"},
  {part_name: "Axle"},
  {part_name: "Brake"}
])
