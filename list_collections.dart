
//  list : it is use to hold multiple values in single variable followed by index value  [ List<String> ]

void main() {

  // there are two types of list

  // 1. Fixed length list
  // it is define with the specified length, can't change the size at Runtime

  // e.g
  List ? abc = List.filled(3, null, growable: false);  // this is fixed length list i cant add more than 3 values because growable is False
  abc[0] = 'First' ;  // added 'First' string at the place of index 0
  abc[1] = 'Second' ;
  abc[2] = 'Third' ;
  // abc[3] = 'Fourth' ;  // it give me range error (index)
  print(abc);  // [First, Second, Third]


  // e.g
  var list = List<int>.filled(5, 0); //.......(length, value)
  print(list);  // [0, 0, 0, 0, 0]


  // Note: i can not change the length but i can change values


  // 2. Growable List : here i can change the length of list at runtime

  // e.g
  var events = [];
  events.add('Halide');   //add method to add values
  events.add('Marriage');
  events.add('Reception');
  print(events);  // [Halide, Marriage, Reception]

  events[0] = 'Bacholar Party';  // it replace the value time pass with halide
  print(events);  //  [Bacholar Party, Marriage, Reception]

  // events[4] = 'HoneyMoon'; // it give me error , length is not given at runtime
  events.add('HoneyMoon');
  print(events);  //  [Bacholar Party, Marriage, Reception, HoneyMoon]

  events.add(50000);  // list is dynamic , type is not specified <>
  print(events);  // [Bacholar Party, Marriage, Reception, HoneyMoon, 50000]


}