import 'dart:io';

var myList = <Object>[];

String name = '';
bool isMale = true;
String numPhone = '';

String nameOkCheck = 'null';
String maleOkCheck = 'null';
String numPhoneOkCheck = 'null';

class AdressBook {
  String name = '';
  String surName = '';
  bool isMale = true;
  String numPhone = '';

  AdressBook(String name, String surName, bool isMale, String numPhone) {
    this.name = name;
    this.surName = surName;
    this.isMale = isMale;
    this.numPhone = numPhone;
  }
}

void main() {
  print('Wybierz działanie:');
  print('');
  print('--add {dodaj kontakt}');
  print('');
  print('--list {pokaż kontakty}');
  print('');
  print('--delete {usuń kontakt}');

  String choice = '--add';
  switch (choice.toLowerCase()) {
    case '--add':
      getValue();
      break;
    case '--list':
      //showList();
      break;
    case '--delete':
      //delete();
      break;
    default:
      print('Nie wybrałeś działania');
      main();
  }
}

void getValue() {
  do {
    print('Podaj imię:');
    String? name = stdin.readLineSync();
    if (name != null || name != '') {
      nameOkCheck = '';
    } else {
      print('Musisz podać imię:');
    }
  } while (nameOkCheck == 'null');

  print('Podaj nazwisko:');
  String? surName = stdin.readLineSync();
  if (surName == null) {
    surName = '';
  }

  do {
    print('Podaj Płeć ( MEN {M} / WOMEN {W} ):');
    String? male = stdin.readLineSync();
    if (male == null) {
      print('Musisz podać płeć:');
    } else if (male.toUpperCase() == 'M') {
      isMale = true;
      maleOkCheck = '';
    } else {
      isMale = false;
      maleOkCheck = '';
    }
  } while (maleOkCheck == 'null');

  do {
    print('Podaj numer telefonu:');
    String? numPhone = stdin.readLineSync();
    if (numPhone != null || numPhone != '') {
      numPhoneOkCheck = '';
    }
  } while (numPhoneOkCheck == 'null');

  var newAdress = new AdressBook(name, surName, isMale, numPhone);

  myList.add(newAdress.name);
  myList.add(newAdress.surName);
  myList.add(newAdress.isMale);
  myList.add(newAdress.numPhone);
  print(myList);
}

void showList() {}

void delete() {}
