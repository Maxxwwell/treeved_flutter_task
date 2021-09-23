class RentCar {
  final String name, image, location, number, price;
  final double id;

  RentCar({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.number,
    required this.price,
  });
}

List<RentCar> forRent = [
  RentCar(
    id: 001,
    name: 'Ferrari J50',
    location: '1901 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/ferrari_J50.JPG',
    number: '1/34',
    price: '340,000',
  ),
  RentCar(
    id: 002,
    name: 'Lamborghini Aventador',
    location: '201 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/l_aventador.JPG',
    number: '1/34',
    price: '440,000',
  ),
  RentCar(
    id: 003,
    name: 'Audi r8',
    location: '3001 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/r8.JPG',
    number: '1/34',
    price: '360,000',
  ),
  RentCar(
    id: 002,
    name: 'Tesla model 3',
    location: '201 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/t_model3.JPG',
    number: '1/34',
    price: '290,000',
  ),
];
