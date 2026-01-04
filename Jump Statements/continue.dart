/// continue
// Use to skip the current iteration.
// When the condition meet,
// it skip current iteration and jump to the next iteration.
// Continue is only applicable inside loops.

void main() {
  // continue with for loop
  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      continue;
    }
    print('i = $i');
  }

  // i = 1
  // i = 2
  // i = 3
  // i = 5
  // i = 6
  // i = 7
  // i = 8
  // i = 9
  // i = 10

  // continue with while loop
  int j = 10;
  while (j >= 1) {
    if (j == 5) {
      j--;
      continue;
    }
    print('j = $j');
    j--;
  }
  // j = 10
  // j = 9
  // j = 8
  // j = 7
  // j = 6
  // j = 4
  // j = 3
  // j = 2
  // j = 1

  // continue with do while loop
  int b = 10;
  do {
    if (b == 6) {
      b--;
      continue;
    }
    print('b = $b');
    b--;
  } while (b >= 1);
  // b = 10
  // b = 9
  // b = 8
  // b = 7
  // b = 5
  // b = 4
  // b = 3
  // b = 2
  // b = 1
}
