class Wellness {
  final String imagePath;

  final String name;

  final bool isLimitedOffer;

  final double price;

  final String id; // shortUUID

  Wellness({
    required this.imagePath,
    required this.name,
    required this.isLimitedOffer,
    required this.price,
    required this.id,
  });
}
