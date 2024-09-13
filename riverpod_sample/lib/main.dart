import 'dart:io';

import 'package:riverpod/riverpod.dart';
import 'package:riverpod_sample/global_providers.dart';

void main() {
  final container = ProviderContainer();
  final dentistService = container.read(dentistServiceProvider);
  final patientService = container.read(patientServiceProvider);
  final appointmentService = container.read(appointmentServiceProvider);

  while (true) {
    print('\nStore Management System');
    print('1. Add a dentist');
    print('2. View all dentists');
    print('3. Add Patient');
    print('4. View all customers');
    print('5. Add a purchase');
    print('6. View all purchases');
    print('8. Remove Patient');
    print('7. Exit');
    print('Enter your choice:');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter Dentist ID:');
        String? id = stdin.readLineSync();
        print('Enter Dentist name:');
        String? name =stdin.readLineSync();
        if (id != null && name != null && id.isNotEmpty && name.isNotEmpty) {
          dentistService.addDentist(id, name);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '2':
        dentistService.viewDentists();
        break;
      case '3':
        print('Enter the customer ID:');
        String? id = stdin.readLineSync();
        print('Enter the customer name:');
        String? name = stdin.readLineSync();
        print('Enter the customer email:');
        String? email = stdin.readLineSync();
        if (id != null && 
            name != null &&
            email != null &&
            name.isNotEmpty &&
            email.isNotEmpty) {
          patientService.addPatient(id, name, email);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '4':
        patientService.viewPatient();
        break;
      case '5':
        
         print('Enter the customer ID:');
        String? id = stdin.readLineSync();
        print('Enter the customer name:');
        String? name = stdin.readLineSync();
        print('Enter the customer email:');
        String? email = stdin.readLineSync();
        if (id != null && 
            name != null &&
            email != null &&
            name.isNotEmpty &&
            email.isNotEmpty) {
          patientService.addPatient(id, name, email);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '6':
        appointmentService.viewAppointments();
        break;
      case '7':
        print('Enter Patient ID:');
        String? patientId = stdin.readLineSync();
        if (patientId != null && patientId.isNotEmpty) {
          patientService.removePatient(patientId);
        } else {
          print('Invalid input. Please try again.');
        }
        break;
      case '10':
        print('Exiting the application...');
        return;
      default:
        print('Invalid choice. Please try again.');
        }
  }
}