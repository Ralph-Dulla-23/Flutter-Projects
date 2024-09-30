import 'package:riverpod/riverpod.dart';
import 'package:riverpod_sample/services/patient_service.dart';
import 'package:riverpod_sample/services/dentist_service.dart';
import 'package:riverpod_sample/services/appointment_service.dart';

final dentistServiceProvider = Provider((ref) => DentistService(ref));
final patientServiceProvider = Provider((ref) => PatientService(ref));
final appointmentServiceProvider = Provider((ref) => AppointmentService(ref));
