/// switch case
// use when we have manny constant possible values to compare.

// syntax
// switch (condition) {
//   case value1:
//     statement
//     break;
//   case value2:
//     statement
//     break;
//   case value3:
//     statement
//     break;
//   case value4:
//     statement
//     break;
//   default:
//     default statement
// }

void main() {
  String weekday = "";
  switch (weekday) {
    case 'Sunday':
      print("Today is Holiday!");
      break;
    case 'Monday':
      print("Today is Monday!");
      break;
    case 'Tuesday':
      print("Today is Tuesday!");
      break;
    case 'Wednesday':
      print("Today is Wednesday!");
      break;
    case 'Thursday':
      print("Today is Thursday!");
      break;
    case 'Friday':
      print("Today is Friday!");
      break;
    case 'Saturday':
      print("Holiday start's!");
      break;
    default:
      print("Doomsday!");
  }
}
