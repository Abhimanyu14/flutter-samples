class Kitten {
  const Kitten({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.age,
  });

  final String name;
  final String description;
  final String imageUrl;
  final int age;
}

final List<Kitten> kittens = [
  const Kitten(
    name: 'Mittens',
    description: 'Ginger',
    imageUrl: 'https://cdn2.thecatapi.com/images/zPtIYiDM-.jpg',
    age: 10,
  ),
  const Kitten(
    name: 'Oliver',
    description: 'Baby',
    imageUrl: 'https://cdn2.thecatapi.com/images/eh8.jpg',
    age: 2,
  ),
  const Kitten(
    name: 'Leo',
    description: 'Cute',
    imageUrl: 'https://cdn2.thecatapi.com/images/2m4.jpg',
    age: 5,
  ),
  const Kitten(
    name: 'Felix',
    description: 'Sleepy',
    imageUrl: 'https://cdn2.thecatapi.com/images/anm.jpg',
    age: 8,
  ),
];
