
class WelcomePageItem {
  final String title;
  final String description;
  final String imagePath;
  WelcomePageItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  bool operator ==(covariant WelcomePageItem other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.imagePath == imagePath;
  }

  @override
  int get hashCode => title.hashCode ^ description.hashCode ^ imagePath.hashCode;

  WelcomePageItem copyWith({
    String? title,
    String? description,
    String? imagePath,
  }) {
    return WelcomePageItem(
      title: title ?? this.title,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() => 'WelcomePageItem(title: $title, description: $description, imagePath: $imagePath)';
}
