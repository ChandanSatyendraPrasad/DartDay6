import 'dart:io';

void main() {
  //Input
  print('Enter your age ');
  var age = stdin.readLineSync();
  print('Your age is $age');

  // Exception {What if user enter a character in place year of birth}
  //There will FormatException

  try {
    print('Enter your birth year ');
    var by = stdin.readLineSync();
    //We cannot directly take year as its a object (String)
    var byy = num.parse(by!);
    var current_age = DateTime.now().year - byy;
    print('Your current age is = $current_age');
  } catch (e) {
    print('Error Message = $e');
  }

  while(true)
    {
      try {
        print('Enter your birth year ');
        var birth = stdin.readLineSync();
        //We cannot directly take year as its a object (String)
        var birth_value = num.parse(birth!);
        var current_age_value = DateTime.now().year - birth_value;
        print('Your current age is = $current_age_value');
        if(current_age_value<101)
          {
            break;
          }

      } on FormatException
      {
        print('Invalid Input');
      }
      catch (e) {
        print('Error Message = $e');
      }
    }
}
