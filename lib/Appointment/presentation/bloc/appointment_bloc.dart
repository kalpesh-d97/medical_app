import 'package:bloc/bloc.dart';
import 'appointment_event.dart';
import 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  AppointmentBloc() : super(const AppointmentState(selectedSlot: '')) {
    on<SelectTimeSlot>((event, emit) {
      emit(AppointmentState(selectedSlot: event.timeSlot));
    });
  }
}
