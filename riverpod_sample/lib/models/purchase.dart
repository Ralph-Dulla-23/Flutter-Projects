import 'patient.dart';
import 'dentist.dart';

class Purchase {
  Patient patient;
  Dentist dentist;

  Purchase(this.patient, this.dentist);

  @override
  String toString() {
    return '${patient.name} bought ${dentist.name}';
  }
}
