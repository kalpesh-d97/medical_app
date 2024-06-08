import 'package:equatable/equatable.dart';

class AppointmentState extends Equatable {
  final String selectedSlot;

  const AppointmentState({required this.selectedSlot});

  @override
  List<Object> get props => [selectedSlot];
}
