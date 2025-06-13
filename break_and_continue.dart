
void main(){


  // 1. Break
  // 1.1. break statement is used to exit a loop. it stops loop immediately, and the program's control moves outside the loop
  // 1.2. it is use to terminate the execution of loops as well as switch case
  // 1.3. break only use in loops and switch case only
  // 1.4. dart supports regular as well as labeled break


  int i ;

  // e.g 1  with-out Break
  for(i = 1 ; i <= 10; i++) {
    print("i = $i");
  }
  // i = 1
  // i = 2
  // i = 3
  // i = 4
  // i = 5
  // i = 6
  // i = 7
  // i = 8
  // i = 9
  // i = 10


  // e.g 1 with Break
  for( i=1;  i<= 10; i++ ) {
    if(i == 3) {
      break ;  // when i==3 trigger then loop jump outside the loop
    }
    print("i = $i");
  }
  // i = 1
  // i = 2


  // e.g of nested for loop with switch
  int j ;

  for(i = 1; i <= 3; i++) {
    for(j = 1; j <= 3; j++) {

      print("i = $i     j = $j ");

      if(i == 2){
        break ;
      }
    }
  }

  // i = 1     j = 1
  // i = 1     j = 2
  // i = 1     j = 3
  // i = 2     j = 1
  // i = 3     j = 1
  // i = 3     j = 2
  // i = 3     j = 3



  // e.g nested for loop break using "label break"
  outerLoop : for(i = 1; i <= 3; i++) {
    for(j = 1; j <= 3; j++) {

      print("i = $i     j = $j ");

      if(i == 2){
        break outerLoop;
      }
    }
  }

  // i = 1     j = 1
  // i = 1     j = 2
  // i = 1     j = 3
  // i = 2     j = 1


  print("\n");


  // 2. Continue
  // 2.1. it is allow only inside in loop
  // 2.2. dart supports both regular and labeled continue
  // 2.3. the continue statement skip the current iteration when it trigger and proceeds to the next one
  // 2.4. when continue statement is encountered in a loop it doesn't terminate the loop but rather jump the flow to next iteration


  // e.g of 1 continue statement
  for( i= 1; i <= 10; i++ ) {
    if( i == 4 ) {
      continue ;  // it skips the current iteration when i==4  triggers
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

  print("\n");

  // e.g 2 of nested loop with label continue
  outerLoop : for( i= 1; i<= 3; i++ ) {

    for( j= 1; j<= 3; j++) {
      if( j==2 ) {
        continue outerLoop ;
      }
      print("i= $i     j= $j");
    }
  }

  // i= 1     j= 1
  // i= 2     j= 1
  // i= 3     j= 1




}