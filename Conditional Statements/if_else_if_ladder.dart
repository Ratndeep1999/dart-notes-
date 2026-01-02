/// if else if
// use to check the multiple conditions

// syntax
// if (condition1) {
//   execute this block if this condition1 is true
// } else if (condition2) {
//   execute this block if this condition2 is true
// } else if (condition3) {
//   execute this block if this condition3 is true
// } else if (condition4) {
//   execute this block if this condition4 is true
// } else {
//   execute this block if all conditions if false
// }

void main() {
  String weekday = "Sunday";

  if (weekday == 'Sunday') {
    print("Today is Holiday!");
  } else if (weekday == 'Monday') {
    print("Today is Office Day!");
  } else if (weekday == 'Tuesday') {
    print("Today is Tuesday!");
  } else if (weekday == 'Wednesday') {
    print("Today is Wednesday!");
  } else if (weekday == 'Thursday') {
    print("Today is Thursday!");
  } else if (weekday == 'Friday') {
    print("Today is Friday!");
  } else if (weekday == 'Saturday') {
    print("Weekend Start's!");
  } else {
    print("Doomsday!");
  }
}
