class CarModel {
  final int id;
  final String title;
  final String img;
  final String description;
  final String status;
  final String date;
  int entries;
  CarModel(
      {this.entries = 5,
      required this.id,
      required this.title,
      required this.status,
      required this.description,
      required this.date,
      required this.img});
}

List<CarModel> item = [
  CarModel(
    entries: 5,
    id: 1,
    title: 'Land Rover Defender',
    description: 'Land Rover Defender A car for all.',
    img: 'assets/img1.png',
    status: 'Maintenance',
    date: '09-03-2023',
  ),
  CarModel(
      entries: 4,
      id: 2,
      title: 'Maserati MC20',
      description: 'Sports Car',
      img: 'assets/img2.png',
      status: 'Maintenance',
      date: '09-03-2023'),
  CarModel(
      entries: 7,
      id: 3,
      title: 'Land Rover Defender',
      description: 'Land Rover Defender',
      img: 'assets/img3.png',
      status: 'Maintenance',
      date: '09-03-2023'),
  CarModel(
      entries: 6,
      id: 3,
      title: 'Volkswagen Golf',
      description: 'Golf car',
      img: 'assets/img4.png',
      date: '09-03-2023',
      status: 'Maintenance'),
];
