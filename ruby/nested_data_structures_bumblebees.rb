highway = {
    car_1: {
        car_color: 'blue',
        car_info: {
            car_type: 'luxury car',
            car_brand: 'Mercedes-Benz C-Class'
        },
        passengers: [
            'Brad Pitt', 
            'Tom Hanks'
        ]
    },
    car_2: {
        car_color: 'red',
        car_info: {
            car_type: 'roadster',
            car_brand: 'Porsche Boxster'
        },
        passengers: [
            'John Case', 
            'Emily Blunt',
            'Ema Stone'
        ]
    },
    car_3: {
        car_color: 'black',
        car_info: {
            car_type: 'compact',
            car_brand: 'Toyota Corolla'
        },
        passengers: []
    }
}

# print color of the first car
p highway[:car_1][:car_color]

# how many passengers are there in car 2
p highway [:car_2][:passengers].length

# print a name of the second passenger in the first car
p highway [:car_1][:passengers][1] 

# add a passenger Evan Black to the car 3
p highway [:car_3][:passengers].push ('Evan Black')

# change the car brand of the car 2 to Mazda MX-5
p highway [:car_2][:car_brand]='Mazda MX-5'
