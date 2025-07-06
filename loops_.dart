

void main() {


// Loop's : mostly use to execute  or
// repeat a block of code until to meet specific condition true

// note : primary purpose of all loops is to repeat a block of code

// there are 5 loop's
// 1. while
// 2. do_while
// 3. for
// 4. for_in
// 5. for_each


// 1. while : this is an entry control loop means it check's condition first, it will
// print the specific code of statement until to meet the specific condition true.

  int i = 1;
  while(i <= 5){
    print(i);
    i++;
  }
  // 1
  // 2
  // 3
  // 4
  // 5


  // 2. do_while loop : this is an exit control loop which means it check's the condition
  // at the end of the loop ,in simple words the body of loop will print at-least once,
  // even if the condition get false,

  i = 1 ;
  do{
    print(i);
    i++;  // if i remove this line then it print i (1) infinitely
  } while(i <= 5);
  // 1
  // 2
  // 3
  // 4
  // 5

  i = 1 ;
  do{
    print(i);
    i++ ;
    // if i give > (greater then sign) then it prints infinite series of garbage values
  }while(i < 1);  // this condition meets false but it will print i at least once
  // 1



  // 3. for : this is most widely used loop in any programming language
  late int j ;
  for( j = 1; j <= 5; j++ );  // for( initialization; condition; inc++/dec-- );
  {
    print(j);
  }



  // 4. for_in loop : it is mostly use to iterate over the collection or in the iterable object
  List items = <int> [10, 20, 30, 40, 50];  // collection of items
  for(int  item in items ){    // ( variable in expression / collection )
    print(item); // this item prints each element inside the items
  }
  // 10
  // 20
  // 30
  // 40
  // 50

  // each times when the 'item' variable iterates it fetch the element from 'items' list and display element



  // 5. for_each : it is use to iterates in the collection like. list, set and map. So whenever we have collection
  // we can iterate the value of collection using for_each loop

  List<String> names =['ratndeep', 'Daniel', 'mark', 'paul', 'samuel'];
  names.forEach((name){  // collection.forEach(void fun (value){ body of loop });
    print(name);
  });
  // ratndeep
  // Daniel
  // mark
  // paul
  // samuel


}