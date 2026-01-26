/// List class
// There re two types of list Fixed and Growable

void main() {
  /// 1. Fixed Length List: Fixed-length list are defined with specified length can not change size at runtime.

  //
  List<String?> abc = List.filled(5, null, growable: false);
  abc[0] = 'First';
  abc[1] = 'Second';
  abc[2] = 'Third';
  print(abc); // [First, Second, Third, null, null]
  print(abc[2]); // Third
  /// I can not change length but i can override values

  //
  List<int> list = List<int>.filled(5, 0);
  print(list); // [0, 0, 0, 0, 0]

  //
  List items = List.empty();
  print(items); // []
  //  items.add(1); // Error

  /// 2. Growable List [most used]: length is not fixed, length can be change at runtime.

  // compile-time safety
  List<int> list1 = [20, 30, 50, 33];
  print(list1); // [20, 30, 50, 33]

  // compile-time safety
  List<String> emptyList = [];
  print(emptyList); // []
  emptyList.add('zero');
  emptyList.add('one');
  emptyList.add('two');
  print(emptyList); // [zero, one, two]

  //
  List list2 = ['zero', 'one'];
  print(list2); // [zero, one]
  list2.add('Three');
  print(list2); // [zero, one, Three]

  /// Types of creating list

  // Creating empty list
  List a = []; // using literals
  List b = List.empty(growable: true); // using empty constructor
  print(a); // []
  print(b); // []

  // Creating list with initial values
  var c = [10,20,30,40]; // var
  List fruits = ['Apple', 'Orange', 'Banana', 'Cherry']; // List class
  List DyValues = ['Sam', 45, 6.9, true]; // dynamic list
  List<String> animal = ['Dog', 'Cat', 'Lion', 'Zebra']; // generic list (specific type)

  // Creating list with filled() constructor
  List d = List.filled(5, 25);
  print(d); // [25, 25, 25, 25, 25]

  // Creating list with generate() constructor
  List e = List.generate(5, (int index) => index * index);
  print(e); // [0, 1, 4, 9, 16]

  // Creating list from another list using from() constructor
  List f = ['Dog', 'Cat', 'Rat', 'Elephant'];
  List g = List.from(f); // runtime checks
  print(g); // [Dog, Cat, Rat, Elephant]

  // Creating list from another list using of() constructor
  List h = ['Sonali', 'Ratndeep', 'Arti', 'Rahul'];
  List i = List.of(h); // compile time checks
  print(i); // [Sonali, Ratndeep, Arti, Rahul]

  // unmodifiable()
  List j = ['Ratndeep', 'Sonali', 'Rahul'];
  j.add('Sunny'); // I can do here
  print(j);

  // List k = List.unmodifiable(j);
  // k.add('Sonu'); // unhandled exception
  // print(k);

  /// Accessing list element
  List elements = ['Rahul', 'Sonali', 'Ratndeep', 'Pihu'];
  print(elements[0]);
  elements[3] = 'Rina'; // Pihu replace with Rina
  print(elements.elementAt(3)); // Rina
  print(elements); // [Rahul, Sonali, Ratndeep, Rina]

  /// Iterating List
  List animals = ['Lion', 'Tiger', 'Monkey', 'Donkey'];

  // Iterating using for-loop
  for(int i = 0; i < animals.length; i++ ) {
    print('Element $i: ${animals[i]}');
  }
  // Element 0: Lion
  // Element 1: Tiger
  // Element 2: Monkey
  // Element 3: Donkey

  // Iterating using for-in-loop
  for (String animal in animals) {
    print('Element: $animal');
  }
  // Element: Lion
  // Element: Tiger
  // Element: Monkey
  // Element: Donkey
  
  // Iterating using for-each-loop
  animals.forEach((animal) => print(animal));
  // Lion
  // Tiger
  // Monkey
  // Donkey

  /// Immutable and Mutable
  // Immutable: also known as const list, where we can't change the elements and modify list.
  const List<String> names1 = ['Sonali', 'Ratndeep', 'Rahul'];
  // names1[1] = 'Billy'; // throw exception
  // names1.add('Eva'); // throw exception
  print(names1); // [Sonali, Ratndeep, Rahul]

  // Mutable: mutable list can be change after declaration.
  List<String> names2 = ['Sonali', 'Ratndeep', 'Rahul'];
  names2.add('Soniea');
  print(names2); // [Sonali, Ratndeep, Rahul, Soniea]
  names2[2] = 'lie';
  print(names2); // [Sonali, Ratndeep, lie, Soniea]

  /// Silent Features about list

  // use of 'if' and 'for' while creating list
  List items1 = [
    10, 20,
    if (10 > 5) 30,
    for(int i = 1; i <= 5; i++)
      i
  ];
  print(items1); // [10, 20, 30, 1, 2, 3, 4, 5]

  // Spread Operator in list creation
  List list3 = [10, 20, 30];
  List list4 = [15, 25, 35, ...list3];
  List list5 = [11, 22, 33, ...list3, ...list4];
  print(list3); // [10, 20, 30]
  print(list4); // [15, 25, 35, 10, 20, 30]
  print(list5); // [11, 22, 33, 10, 20, 30, 15, 25, 35, 10, 20, 30]

  // Range error
  List animalNames = ['Tiger', 'Lion', 'Dog', 'Elephant'];
  print(animalNames); // [Tiger, Lion, Dog, Elephant]
  print(animalNames[3]); // Elephant
  // print(animalNames[4]); // Exception index should be less than 4

  // No modification using 'for-in' and 'for-each' loop
  List items6 = [10, 20, 30, 40, 50];

  // for-in
  for (int item in items6) {
    item = item + 1;
    print(item);
  }
  // 11
  // 21
  // 31
  // 41
  // 51

  // for-each
  items6.forEach((item) {
    item = item + 5;
    print(item);
  });
  // 15
  // 25
  // 35
  // 45
  // 55
  print('items6: $items6'); // items6: [10, 20, 30, 40, 50]

  // List is abstract class
  List items7 = List.filled(5,0);
  print(items7); // [0, 0, 0, 0, 0]

  // Matrix or Multi-dimensional List
  List<List<int>> matrix = [
    [19, 12, 34],
    [15, 25, 11],
    [48, 72, 52]
  ];

  for(int i = 0; i < matrix.length; i++) {
    print('Row $i');

    for (int j = 0; j < matrix[i].length; j++) {
      print(matrix[i][j]);
    }
  }
  // Row 0
  // 19
  // 12
  // 34
  // Row 1
  // 15
  // 25
  // 11
  // Row 2
  // 48
  // 72
  // 52

  // Default value of element is null
  List list8 = [];
  list8.length = 5;
  print(list8); // [null, null, null, null, null]

  /// Properties
  // first: return first element of list.
  // last: return last element of list.
  // isEmpty: return true if the list is empty.
  // isNotEmpty: return true if the list is not empty.
  // length: return the length of the list.
  // reversed: return a list in reverse order.
  // single: use only when list has single item and to return it.

  List animalList = ['Cat','Dog','Camel','Lion','Wolf'];
  List animalList1 = ['Cat'];
  print(animalList.first); // Cat
  print(animalList.last); // Wolf
  print(animalList.isEmpty); // false
  print(animalList.isNotEmpty); // true
  print(animalList.length); // 5
  print(animalList.reversed); // (Wolf, Lion, Camel, Dog, Cat)
  print(animalList1.single); // Cat

  /// Methods
  // add(): insert single element in list using element.
  // insert(): insert single element in list at specific index using index & element.
  // addAll(): insert entire list inside another list using list name.
  // insertAll(): insert list inside another list from specific index using list name.
  // remove(): remove specific element from list using element.
  // removeAt(): remove specific element from list using element index.
  // removeLast(): remove last element of list.
  // clear(): remove all elements from list, clear the list.
  // removeRange(): remove specific range of elements using (index, length).
  // removeWhere(): remove elements from list that satisfy a condition.
  // retainWhere(): keep only elements that satisfy a condition.
  // indexOf(): return first index of an element, if not found then -1.
  // lastIndexOf(): return last index of an element, if not found then -1.
  // sort(): sort list in place (modifies original list) default sort is ascending order.
  // reversed(): reverse list.
  // shuffle(): randomly rearranges element of list.
  // sublist(): extract a portion od list.
  // where(): filter element base on condition and return 'Iterable'.
  // whereType(): filters elements by type and return WhereTypeIterable<Type>.
  // toList(): convert Iterable into a list.
  // map(): transform each element into a new value without modify original list.
  // reduce(): combines all elements into one single value by performing operation on each and every element.
  // fold(): same as reduce, but allows an initial value and it can return any type of value even on empty list.

  /// Conversional methods
  // toList(): convert iterable into alist.
  // toSet(): converts list into set (remove duplicate values)
  // asMap(): converts a list into a Map<index, value>

  /// Conditional methods
  // every(): checks if all elements satisfy condition if yes then return true.
  // any(): check if at least one element satisfies condition.
  // replaceRange(): replaces elements in a specific index range.

  /// Other remaining methods
  // contains(): check that is list contain element if yes the return true.
  // firstWhere(): returns the first element that matches a condition.
  // lastWhere(): returns tha last element that matches a condition.
  // indexWhere(): return the index of the first element matching a condition, if not match then -1.
  // singleWhere(): returns the only element that matches the condition, error if no match or more match.
  // followedBy(): combines two iterables without modifying the original list.
  // whereNot(): we simulate it using where() + !
  // join(): converts a list into a single string.
  // take(): takes the first N elements (used in pagination).
  // skip(): skip the first N element.
  // expand(): flattens nested lists into a single list.
  // cast<T>(): converts a dynamic list into a typed list.

  /// Difference between Iterable and List
  // where(), map(), reversed() ==> return Iterable
  // toList() --> converts to list

  // add(), insert()
  List myNames = ['Sonali'];
  myNames.add('Ratndeep');
  print(myNames); // [Sonali, Ratndeep]
  myNames.insert(2, 'Alex');
  print(myNames); // [Sonali, Ratndeep, Alex]

  // addAll()
  List maleNames = ['Ratndeep', 'Alex', 'Evan'];
  List femaleNames = ['Sonali', 'Soniyea'];
  maleNames.addAll(femaleNames);
  print(maleNames); // [Ratndeep, Alex, Evan, Sonali, Soniyea]

  // insertAll()
  List humanNames = ['Sonali', 'Ratndeep', 'Alex'];
  List birdsNames = ['Parrot', 'Eagle', 'Pigeon', 'Kingfisher'];
  humanNames.insertAll(2, birdsNames);
  print(humanNames); // [Sonali, Ratndeep, Parrot, Eagle, Pigeon, Kingfisher, Alex]

  // removeAt()
  List myFruits = ['Mango', 'Lemon', 'Orange', 'Grapes'];
  myFruits.removeAt(1);
  print(myFruits); // [Mango, Orange, Grapes]
  
  // remove()
  myFruits.remove('Mango');
  print(myFruits); // [Orange, Grapes]

  // removeLast()
  myFruits.removeLast();
  print(myFruits); // [Orange]

  // clear()
  myFruits.clear();
  print(myFruits); // []

  // removeRange()
  List fvtNames = ['Sonali', 'Ratndeep', 'Dipak', 'Gautam'];
  fvtNames.removeRange(1, 3); // (index, length)
  print(fvtNames); // [Sonali, Gautam]

  // removeWhere()  list.removeWhere((element) => condition);
  List fvtAnimals = ['Dog', 'Cat', 'Wolf', 'Monkey', 'Lion', 'Tiger'];
  fvtAnimals.removeWhere((animal) => animal.contains('o'));
  print(fvtAnimals); // [Cat, Tiger]
  // or

  // keep the element if return true, remove if return false
  fvtAnimals = ['Dog', 'Cat', 'Wolf', 'Monkey', 'Lion', 'Tiger'];
  fvtAnimals.removeWhere((animal) {
    if (animal.contains('t') || animal.contains('T')) return true;
    return false;
  });
  print(fvtAnimals); // [Dog, Wolf, Monkey, Lion]

  // retainWhere() list.retainWhere((element) => condition);
  List myNum = [1,2,3,4,5,6,7,8,9];
  myNum.retainWhere((number) {
    return number.isEven;
  });
  print(myNum); // [2, 4, 6, 8]

  // indexOf()
  List myItems = [10, 20, 30, 20, 40, 50, 20, 60, 70];
  print(myItems.indexOf(20)); // 1

  // lastIndexOf()
  print(myItems.lastIndexOf(60)); // 7

  // sort()
  List numList = [2, 5 ,8 ,7 ,9 ,3, 1, 12, 6, 4, 0, 11, 10];
  numList.sort();
  print(numList); // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  // reversed (reverse sort())
  numList = [2, 5 ,8 ,7 ,9 ,3, 1, 12, 6, 4, 0, 11, 10];
  numList.sort();
  Iterable<dynamic> reverserList = numList.reversed;
  print(reverserList); // (12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0)
  print(reverserList.toList()); // [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

  // Descending order numbers.sort((a, b) => b.compareTo(a));
  numList = [9, 11, 3, 46, 92, 8, 12, 4, 25, 12];
  numList.sort((left, right) => right.compareTo(left));
  print(numList); // [92, 46, 25, 12, 12, 11, 9, 8, 4, 3]

  // Descending order using if statement [ace-dec <>].
  numList = [9, 11, 3, 46, 92, 8, 12, 4, 25, 12];
  numList.sort(
          (left, right) {
            if (left < right) return 1; // (if a > b return -1)
            return 0;
          });
  print(numList); // [92, 46, 25, 12, 12, 11, 9, 8, 4, 3]

  // shuffle()
  numList.shuffle();
  print(numList); // rearrange the list element randomly every time.

  // sublist()
  List nameList = ['Sonali', 'Ratndeep', 'Anjali', 'Soniyea', 'Gautam', 'Aparna'];
  List extractedNames = nameList.sublist(2, 6); // (index-start, length-end)
  print(extractedNames); // [Anjali, Soniyea, Gautam, Aparna]

  // where() numbers.where((n) => n.isEven)
  print(nameList.where((e) => e.contains('on'))); // (Sonali, Soniyea)
  print(nameList.where((e) => e.contains('on')).toList()); // [Sonali, Soniyea]

  // whereType()
  List myBioData = ['Ratndeep', 26, true, 'Jennifer'];
  print(myBioData.whereType<String>().toList()); // [Ratndeep, Jennifer]

  // map() elements.map((string) => string.toUpperCase())
  nameList = ['sonali', 'ratndeep', 'anjali', 'soniyea', 'gautam'];
  Iterable<String> allNames = nameList.map((e) => e.toUpperCase());
  print(allNames); // (SONALI, RATNDEEP, ANJALI, SONIYEA, GAUTAM)
  print(allNames.toList()); // [SONALI, RATNDEEP, ANJALI, SONIYEA, GAUTAM]

  // reduce() numbers.reduce((a, b) => a + b)
  numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int addition = numList.reduce((value, nextValue) => value + nextValue);
  print(addition); // 55 .....((1 + 2) + 3) + 4

  // fold()
  var sequence = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var total = sequence.fold(10, (prev, element) => prev + element);
  print(total); // 65 ..... 10 + 1 + 2 + 3 + 4...

  // toSet()
  nameList = ['Sonali', 'Ratndeep', 'Anjali', 'Soniyea', 'Gautam', 'Aparna', 'Sonali', 'Gautam'];
  print(nameList.toSet()); // {Sonali, Ratndeep, Anjali, Soniyea, Gautam, Aparna}

  // asMap()  {index(key): element(value)}
  nameList = ['Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'];
  print(nameList.asMap()); // {0: Sonali, 1: Soniyea, 2: Anjali, 3: Aparna, 4: Ratndeep}

  // every()
  print(nameList.every((name) => name.contains('n'))); // true

  // any()
  print(nameList.any((name) => name.contains('R'))); // true

  // replaceRange()
  nameList.replaceRange(3, 5, ['Alisha', 'Mala']);
  print(nameList); // [Sonali, Soniyea, Anjali, Alisha, Mala]

  // firstWhere() list.firstWhere((element) => condition);
  nameList = ['Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'];
  print(nameList.firstWhere((name) => name.contains('on'))); // Sonali

  // lastWhere()
  print(nameList.lastWhere((name) => name.contains('on'))); // Soniyea

  // indexWhere()
  print(nameList.indexWhere((name) => name == 'Ratndeep')); // 4

  // singleWhere()
  print(nameList.singleWhere((name) => name == 'Ratndeep')); // Ratndeep

  // followedBy()  return type Iterable
  List maleName = ['Ratndeep', 'Dipak'];
  List femaleName = ['Sonali', 'Soniyea'];
  print(maleName.followedBy(femaleName)); // (Ratndeep, Dipak, Sonali, Soniyea)

  // whereNot()
  print(nameList.where((name) => !name.contains('on'))); // (Anjali, Aparna, Ratndeep)
  
  // join()
  print(nameList.join()); // SonaliSoniyeaAnjaliAparnaRatndeep
  print(nameList.join(', ')); // Sonali, Soniyea, Anjali, Aparna, Ratndeep

  // take()
  print(nameList.take(2).toList()); // [Sonali, Soniyea]

  // skip()
  print(nameList.skip(2).toList()); // [Anjali, Aparna, Ratndeep]

  // expand()
  List<List<int>> myMatrix = [
    [1, 2],
    [3, 4]
  ];
  print(myMatrix.expand((e) => e).toList()); // [1, 2, 3, 4]

  // cast<T>()
  List<dynamic> data = [1, 2, 3];
  List<int> numbers = data.cast<int>();
  print(numbers); // [1, 2, 3]

}