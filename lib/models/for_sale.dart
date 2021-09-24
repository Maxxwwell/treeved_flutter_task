class ForSale {
  final String name, image, location, number, price;
  final double id;

  ForSale({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.number,
    required this.price,
  });
}

List<ForSale> showingResult = [
  ForSale(
    id: 001,
    name: 'Tesla model 3',
    location: '1901 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/t_model3.JPG',
    number: '1/34',
    price: '340,000',
  ),
  ForSale(
    id: 002,
    name: 'Tesla model 3',
    location: '201 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/tm3.JPG',
    number: '1/34',
    price: '440,000',
  ),
  ForSale(
    id: 003,
    name: 'Tesla model 3',
    location: '3001 Thornridge Cir. Shiloh, Hawaii 81063',
    image: 'assets/images/tm3_.JPG',
    number: '1/34',
    price: '360,000',
  ),
];
