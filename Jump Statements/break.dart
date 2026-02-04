/// break
// Used to immediately exit a loop. When break is executed, the loop stops and control moves to the statement
// after the loop.

// break can be used inside: for, while, do-wile, for-in, and switch case.
// break is not allowed: outside  loop, or switch and inside forEach().

void main() {
  // break with for loop
  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      break;
    }
    print('i = $i');
  }

  // i = 1
  // i = 2
  // i = 3

  // break with while loop
  int j = 10;
  while (j >= 1) {
    if (j == 4) {
      break;
    }
    print('j = $j');
    j--;
  }
  // j = 10
  // j = 9
  // j = 8
  // j = 7
  // j = 6
  // j = 5

  // break with do while loop
  int b = 10;
  do {
    if (b == 5) {
      break;
    }
    print('b = $b');
    b--;
  } while (b >= 1);
  // b = 10
  // b = 9
  // b = 8
  // b = 7
  // b = 6
}
