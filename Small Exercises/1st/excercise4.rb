vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(a)
   cars = a.count('car')
   trucks = a.count('truck')
   motorcycles = a.count('motorcycle')
   suv = a.count('SUV')

   puts ("cars => " + cars.to_s)
   puts ("trucks => " + trucks.to_s)
   puts ("motorcycles => " + motorcycles.to_s)
   puts ("SUVS => " + suv.to_s)
end

count_occurrences(vehicles)