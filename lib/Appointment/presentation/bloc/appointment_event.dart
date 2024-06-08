import 'package:equatable/equatable.dart';

abstract class AppointmentEvent extends Equatable {
  const AppointmentEvent();

  @override
  List<Object> get props => [];
}

class SelectTimeSlot extends AppointmentEvent {
  final String timeSlot;

  const SelectTimeSlot(this.timeSlot);

  @override
  List<Object> get props => [timeSlot];
}
