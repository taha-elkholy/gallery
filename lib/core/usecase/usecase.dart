import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gallery/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppFailure, Type>> call(Params param);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
