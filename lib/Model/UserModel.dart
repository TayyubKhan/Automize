class UserModel {
  final int id;
  final String name;
  final String img;
  final String location;

  int entries;
  UserModel(
      {this.entries = 5,
      required this.id,
      required this.name,
      required this.location,
      required this.img});
}

List<UserModel> item = [
  UserModel(
    id: 1,
    name: 'Emily Clark',
    location: 'Land Rover Defender A car for all.',
    img: 'assets/img1.png',
  ),
];
