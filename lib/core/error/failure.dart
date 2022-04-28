import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class ServerFailure extends Failure {
  final String message;
  const ServerFailure(this.message);

  @override
  List<Object> get props => [];
}
