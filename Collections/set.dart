import 'dart:collection';

/// Set class
// unordered collection of unique elements.
// no index access, no duplicates, elements can't modified,
// se is predefined abstract class.

void main() {
  /// Creating set

  // empty set
  Set emptySet = {};
  print(emptySet.runtimeType); // _Set<dynamic>

  // explicate type
  Set<String> explicateSet = <String>{};
  print(explicateSet); // {}

  // Identity Set
  Set identitySet = Set.identity();
  var a = 'hello';
  var b = 'hello';

  identitySet.add(a);
  identitySet.add(b);

  print(identitySet.length); // 2 (checks reference, not value)

  // Creating set with initial values.
  Set dynamicData = {'Somali', false, 26, 5.3}; // dynamic state
  print(dynamicData); // {Somali, false, 26, 5.3}

  Set<int> numbers = {10, 20, 30, 40, 50}; // generic state
  print(numbers); // {10, 20, 30, 40, 50}

  // Creating set from another set using - from(), of(), unmodifiable().
  Set set1 = {10, 20, 30, 40};
  Set set2 = Set.from(set1);
  Set set3 = Set.of(set2);
  Set set4 = Set.unmodifiable(set3); // constant set
  print(set4); // {10, 20, 30, 40}

  /// Accessing Set Elements

  Set names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep', 'Gautam'};
  print(names); // {Sonali, Soniyea, Anjali, Aparna, Ratndeep, Gautam}
  print(names.elementAt(0)); // Sonali
  print(names.elementAt(3)); // Aparna

  /// Iterating set using for(), forIn(), forEach().

  // for
  for (int i = 0; i < names.length; i++) {
    print(names.elementAt(i));
  }
  // Sonali
  // Soniyea
  // Anjali
  // Aparna
  // Ratndeep
  // Gautam

  // for-in
  for (String name in names) {
    print(name);
  }
  // Sonali
  // Soniyea
  // Anjali
  // Aparna
  // Ratndeep
  // Gautam

  // for.each()
  names.forEach((name) => print(name));
  // Sonali
  // Soniyea
  // Anjali
  // Aparna
  // Ratndeep
  // Gautam

  /// Immutable set
  Set constNames = const {
    'Sonali',
    'Soniyea',
    'Anjali',
    'Aparna',
    'Ratndeep',
    'Gautam',
  };
  // constNames.add('Vaishali'); // Error
  print(constNames); // {Sonali, Soniyea, Anjali, Aparna, Ratndeep, Gautam}

  /// Silent features of set

  // if() and for() in Set
  Set items = {
    10, 20,
    if (10 > 5) 30, // ...true
    for (int i = 1; i <= 5; i++) {i},
  };
  print('Items: $items'); // Items: {10, 20, 30, {1}, {2}, {3}, {4}, {5}}

  // spread operators
  Set numSet1 = {1, 2, 3};
  Set numSet2 = {10, 20, 30, ...numSet1};
  print(numSet1); // {1, 2, 3}
  print(numSet2); // {10, 20, 30, 1, 2, 3}

  // Range error exception
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep', 'Gautam'};
  // print(names.elementAt(6)); // RangeError (index): index is out of range

  /// No modification on elements of sets but perform operation on set elements
  numbers = {10, 20, 30, 40, 50};
  print('Numbers: $numbers'); // Numbers: {10, 20, 30, 40, 50}

  // for-in
  for (int number in numbers) {
    number = number + 1;
    print(number);
  }
  // 11
  // 21
  // 31
  // 41
  // 51

  // for.each()
  numbers.forEach((number) {
    number = number + 5;
    print(number);
  });
  // 15
  // 25
  // 35
  // 45
  // 55

  /// Set in abstract class
  Set abstractSet = Set();
  abstractSet.add('Sonali');
  abstractSet.add('Ratndeep');
  abstractSet.add('Vaishali');
  print(abstractSet); // {Sonali, Ratndeep, Vaishali}
  print(abstractSet.runtimeType); // _Set<dynamic>

  /// Properties
  // single: return single element of set, if set hold multi elements then it return error.
  // first: return first element of set.
  // last: return last element of set.
  // isEmpty: return true if set is empty.
  // isNotEmpty: return true if set is not empty.
  // length: return length of the set.

  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep', 'Gautam'};
  Set singleName = {'Sonali'};
  print(names.length); // 6
  print(names.first); // Sonali
  print(names.last); // Gautam
  print(names.isEmpty); // false
  print(names.isNotEmpty); // true
  print(singleName.single); // Sonali

  /// Methods
  // add(): add one unique element.
  // addAll(): add multiple elements (entire set).
  // remove(): removes a single element from set (return true).
  // removeAll(): removes multiple elements.
  // clear(): removes everything from set.
  // removeWhere(): removes element that match a condition.
  // retainWhere(): keeps element that match a condition, remove others.
  // retainAll(): keeps only elements that exist in another collection.
  // elementAt(): get element at index (order not guaranteed).
  // contains(): checks if element exists return true.
  // containsAll(): checks if set contains all element return true.
  // where(): filter elements (return Iterable).
  // whereType(): filter by type.
  // map(): transforms each element to map.
  // union(): combines two sets.
  // intersection(): common elements only.
  // difference(): element in first but not second.
  // reduce(): combines element into one value.
  // fold(): same as reduce but with initial value.
  // toList(): converts set to list.
  // toSet(): converts Iterables to set (mostly used after map/where).
  // every(): checks if all elements satisfy condition.
  // any(): checks if any element satisfies condition.
  // firstWhere(): return first element that match the condition.
  // lastWhere(): return last element that match the condition.
  // singleWhere(): return single element that match the condition.
  // lookup(): returns the actual stored object equal to the argument.

  // add()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  names.add('Gautam');
  print(names); // {Sonali, Soniyea, Anjali, Aparna, Ratndeep, Gautam}

  // addAll()
  names = {'Sonali', 'Soniyea'};
  names.addAll({'Anjali', 'Aparna'});
  print(names); // {Sonali, Soniyea, Anjali, Aparna}

  // remove()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  names.remove('Ratndeep');
  print(names); // {Sonali, Soniyea, Anjali, Aparna}

  // removeAll()
  names.removeAll({'Anjali', 'Aparna'});
  print(names); // {Sonali, Soniyea}

  // clear()
  names.clear();
  print(names); // {}

  // removeWhere()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  names.removeWhere((name) => name == 'Ratndeep');
  print(names); // {Sonali, Soniyea, Anjali, Aparna}
  names.removeWhere((name) => name.contains('i'));
  print(names); // {Aparna}

  // retainWhere()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  names.retainWhere((name) => name.contains('i'));
  print(names); // {Sonali, Soniyea, Anjali}

  // retainAll()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  names.retainAll({'Sonali', 'Anjali', 'Aparna'});
  print(names); // {Sonali, Anjali, Aparna}

  // elementAt()
  print(names.elementAt(1)); // Anjali

  // contains()
  print(names.contains('Anjali')); // true

  // containsAll()
  print(names.containsAll({'Anjali', 'Sonali'})); // true

  // where()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  print(names.where((name) => name.contains('on')).toSet()); // {Sonali, Soniyea}

  // whereType()
  Set myData = {'Sonali', true, 5, 5.3};
  print(myData.whereType<String>()); // (Sonali)

  // map()
  Iterable capitalNames = names.map((name) => name.toUpperCase()); //
  print(capitalNames.toSet()); // {SONALI, SONIYEA, ANJALI, APARNA, RATNDEEP}

  // union()
  Set maleNames = {'Ratndeep', 'Gautam', 'Aparna'};
  Set femaleNames = {'Sonali', 'Soniyea', 'Aparna'};
  print(maleNames.union(femaleNames)); // {Ratndeep, Gautam, Sonali, Soniyea}

  // intersection()
  print(maleNames.intersection(femaleNames)); // {Aparna}

  // difference()
  print(maleNames.difference(femaleNames)); // {Ratndeep, Gautam}

  // reduce()
  numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  print(numbers.reduce((a, b) => a + b)); // 55

  // fold()
  int result = numbers.fold(5, (a, b) => a + b);
  print(result); // 60

  // toList()
  print(names.toList()); // [Sonali, Soniyea, Anjali, Aparna, Ratndeep]

  // toSet()
  names = ['Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'].toSet();
  print(names); // {Sonali, Soniyea, Anjali, Aparna, Ratndeep}

  // every()
  print(names.every((name) => name.contains('n'))); // true

  // any()
  print(names.any((name) => name.contains('p'))); // true

  // firstWhere()
  print(names.firstWhere((n) => n.startsWith('S'))); // Sonali

  // lastWhere()
  print(names.lastWhere((n) => n.contains('a'))); // Ratndeep
  
  // singleWhere()
  print(names.singleWhere((n) => n == 'Sonali')); // Sonali

  // lookup()
  print(names.lookup('Ratndeep')); // Ratndeep

  /// Sorting set
  // in Set() there is o such a method to srt values, but there are three techniques to sort values.

  // 1. Convert Set to List then apply Sort()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  List nameList = names.toList();
  nameList.sort();
  print(nameList); // [Anjali, Aparna, Ratndeep, Sonali, Soniyea]

  // 2. SplayTreeSe.from()
  names = {'Sonali', 'Soniyea', 'Anjali', 'Aparna', 'Ratndeep'};
  SplayTreeSet sortedNames = SplayTreeSet.from(names);
  print(sortedNames); // {Anjali, Aparna, Ratndeep, Sonali, Soniyea}

  // add new one
  sortedNames.add('Barbie');
  print(sortedNames); // {Anjali, Aparna, Barbie, Ratndeep, Sonali, Soniyea}

  // ascending and descending order
  sortedNames = SplayTreeSet.from(names, (left, right) => right.compareTo(left));
  print(sortedNames); // {Soniyea, Sonali, Ratndeep, Aparna, Anjali}

  // 3. SplayTreeSet object
  SplayTreeSet namesAdjust = SplayTreeSet();
  namesAdjust.add('Sam');
  namesAdjust.add('Mark');
  namesAdjust.add('Dennis');
  namesAdjust.add('Alex');
  print(namesAdjust); // {Alex, Dennis, Mark, Sam}
}