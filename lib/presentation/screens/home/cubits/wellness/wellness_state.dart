// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'wellness_cubit.dart';
class WellnessState {
  final bool isLoading;
  final List<Wellness> wellnessList;
  final String? errorMessage;

  const WellnessState({
    this.isLoading = false,
    this.wellnessList = const [],
    this.errorMessage,
  });

  // Create a copyWith method for updating specific properties
  WellnessState copyWith({
    bool? isLoading,
    List<Wellness>? wellnessList,
    String? errorMessage,
  }) {
    return WellnessState(
      isLoading: isLoading ?? this.isLoading,
      wellnessList: wellnessList ?? this.wellnessList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }


  @override
  bool operator ==(covariant WellnessState other) {
    if (identical(this, other)) return true;
  
    return 
      other.isLoading == isLoading &&
      listEquals(other.wellnessList, wellnessList) &&
      other.errorMessage == errorMessage;
  }

  @override
  int get hashCode => isLoading.hashCode ^ wellnessList.hashCode ^ errorMessage.hashCode;
}
