import 'package:equatable/equatable.dart';

class Gallery extends Equatable {
  final List<String> images;

  const Gallery({required this.images});

  @override
  List<Object?> get props => [images];
}
