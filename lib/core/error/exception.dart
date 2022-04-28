import 'package:equatable/equatable.dart';

abstract class MyException extends Equatable implements Exception {
  @override
  List<Object?> get props => [];
}

class ServerException extends MyException {
  final String message;

  ServerException({required this.message});
  @override
  List<Object?> get props => [message];
}

class SharedException extends MyException {}