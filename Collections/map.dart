/// Map class
// collection of elements, element is pair of key & value.
// every key must be unique.
// both can be of any type.
// element access using key.
// Map is implemented by: 1- HashMap, 2- LinkedHashMap, 3- SplayTreeMap

void main() {
  /// Creating empty map

  Map<String, String> map1 = {}; // specific type of key and value
  var map2 = {}; // both can be of any type
  print(map1.runtimeType); // _Map<String, String>
  print(map2.runtimeType); // _Map<dynamic, dynamic>

  /// Map identity
  Map identityMap = Map.identity();

  var a = 'key';
  var b = 'key';

  identityMap[a] = 1;
  identityMap[b] = 2;

  print(identityMap.length); // 2 (reference-based keys)

  /// Creating map using values
  Map myData = {
    'name': 'Ratndeep',
    'age': 26,
    'salary': 35000,
    'post': 'Software Developer',
  };
  print(myData);
  // {name: Ratndeep, age: 26, salary: 35000, post: Software Developer}

  /// Creating map from another map

  Map person1 = {'name': 'Sonali', 'age': 25, 'status': 'Single'};

  // from()
  Map person2 = Map.from(person1);

  // of()
  Map person3 = Map.of(person2);

  // unmodifiable()
  Map person4 = Map.unmodifiable(person3);

  print(person4); // {name: Sonali, age: 25, status: Single}

  /// Creating map from List or Set
  List list = [10, 20, 30, 40, 50];
  Map map = Map.fromIterable(list);
  print(map); // {10: 10, 20: 20, 30: 30, 40: 40, 50: 50}

  /// Accessing individual elements of Map()
  Map person = {};

  // assigning key and their value
  person['name'] = 'Aparna';
  person['age'] = 23;
  person['gender'] = 'Female';
  person['isMarried'] = false;

  // update value using key
  person['age'] = 25;

  // fetch Map values using keys
  print(person['name']); // Aparna
  print(person['age']); // 25
  print(person['gender']); // Female
  print(person['isMarried']); // false
  print(person['ah']); // null  .. because of key is unidentified.

  /// Iterating Map

  // for [using keys]
  var keys = person.keys.toList();

  for (int i = 0; i < keys.length; i++) {
    var key = keys[i];
    print('$key => ${person[key]}');
  }
  // null
  // name => Aparna
  // age => 25
  // gender => Female
  // isMarried => false

  // for [using entries]
  var entries = person.entries.toList();

  for (int i = 0; i < entries.length; i++) {
    print('${entries[i].key} => ${entries[i].value}');
  }
  // null
  // name => Aparna
  // age => 25
  // gender => Female
  // isMarried => false

  // forIn
  for (var entry in person.entries) {
    print('${entry.key}: ${entry.value}');
  }
  // name: Aparna
  // age: 25
  // gender: Female
  // isMarried: false

  // forIn [using keys]
  for (var key in person.keys) {
    print('$key: ${person[key]}');
  }
  // name: Aparna
  // age: 25
  // gender: Female
  // isMarried: false

  // forIn [using values]
  for (var value in person.values) {
    print(value);
  }
  // Aparna
  // 25
  // Female
  // false

  // forEach
  person.forEach((key, value) {
    print('$key: $value');
  });
  // name: Aparna
  // age: 25
  // gender: Female
  // isMarried: false

  /// Properties
  // keys: return key (iterable of keys).
  // values: return value (iterable of values).
  // entries: (iterable<MapEntry>).
  // length: return length of map.
  // isEmpty: return true if map is empty.
  // isNotEmpty: return true if map is not empty.

  print(person.keys); // (name, age, gender, isMarried)
  print(person.values); // (Aparna, 25, Female, false)
  print(person.entries);
  // (MapEntry(name: Aparna), MapEntry(age: 25), MapEntry(gender: Female), MapEntry(isMarried: false))
  print(person.length); // 4
  print(person.isEmpty); // false
  print(person.isNotEmpty); // true

  /// Methods
  // addAll(): add elements from one to another map.
  // remove(): removes specific element using key.
  // putIfAbsent(): add element only & only when such a key is not present in map.
  // removeWhere(): remove element that satisfy specific condition.
  // containsKey(): check specific key is available in map or not.
  // containsValue(): check specific value is available in map or not.
  // map(): creates a new map by transforming keys and/or values.
  // update(): updates the value of an existing key.
  // updateAll(): update every value in the map.
  // clear(): removes all entries from map.
  // every(): return true if every entry satisfies the condition.
  // any(): return true if any single entry matcher the condition.
  // toList(): converts keys/values/entries into a list.
  // toSet(): converts values (or keys) into a set.

  // addAll()
  person.addAll({'post': 'Software Developer', 'salary': 35000});
  print(person);
  // {name: Aparna, age: 25, gender: Female, isMarried: false, post: Software Developer, salary: 35000}

  // addEntries()
  var newEntries = [MapEntry('city', 'Pune'), MapEntry('country', 'India')];
  person.addEntries(newEntries);
  print(person);
  // {name: Aparna, age: 25, gender: Female, isMarried: false, post: Software Developer, salary: 35000, city: Pune, country: India}

  // remove()
  person.remove('country');
  print(person); // remove country entry

  // putIfAbsent()
  person.putIfAbsent('city', () => 'Nagpur');
  person.putIfAbsent('country', () => 'india');
  print(person); // add country entry

  // removeWhere()
  person.removeWhere((key, value) {
    if (value.runtimeType == int) return true;
    return false;
  });
  print(person); // removes int type values

  person.removeWhere((key, value) => value is bool);
  print(person); // removes bool type of values

  person.removeWhere((key, value) {
    if (key == 'city' || key == 'country') {
      return true;
    }
    return false;
  });
  print(person); // removes city and country entries

  // containsKey()
  print(person.containsKey('name')); // true

  // containsValue()
  print(person.containsValue('Female')); // true

  // map() var newMap = oldMap.map((key, value) => MapEntry(newKey, newValue));
  Map personCopy = person.map((key, value) => MapEntry(key, value));
  print(personCopy); // {name: Aparna, gender: Female, post: Software Developer}

  Map upperKeys = personCopy.map((k, v) => MapEntry(k.toUpperCase(), v));
  print(upperKeys); // {NAME: Aparna, GENDER: Female, POST: Software Developer}

  Map numbers = {
    'One': 1,
    'Two': 2,
    'Three': 3,
  };
  Map numbersCopy = numbers.map((key, value) => MapEntry(key, value * 2));
  print(numbersCopy); // {One: 2, Two: 4, Three: 6}

  // update()  map.update(key, (oldValue) => newValue);
  numbers.update('Three', (value) => value + 5);
  print(numbers); // {One: 1, Two: 2, Three: 8}

  // If key not present, ifAbsent trigger
  person.update('post', (value) => 'Police', ifAbsent: () => 'Cook');
  print(person); // {name: Aparna, gender: Female, post: Police}

  // updateAll()  map.updateAll((key, value) => newValue);
  print(numbers); // {One: 1, Two: 2, Three: 8}
  numbers.updateAll((key, value) => value + 2);
  print(numbers); // {One: 3, Two: 4, Three: 10}

  person.updateAll((key, value) {
    if (key == 'name') {
      return 'Ratndeep';
    }
    if (key == 'gender') {
      return 'Male';
    }
    return value;
  });
  print(person); // {name: Ratndeep, gender: Male, post: Police}

  // clear()
  person.clear();
  print(person); // {}

  // every() map.value.every((key, value) => condition);
  person = {
    'name': 'Aparna',
    'post': 'Manager',
    'city': 'Pune',
  };
  print(person.values.every((value) => value.contains('n'))); // true

  // any() map.value.any((key, value) => condition);
  print(person.values.any((value) => value.contains('u'))); // true

  // toList()
  print(person.keys.toList()); // [name, post, city]
  print(person.values.toList()); // [Aparna, Manager, Pune]
  print(person.entries.toList()); // [MapEntry(name: Aparna), MapEntry(post: Manager), MapEntry(city: Pune)]

  // toSet()
  print(person.keys.toSet()); // {name, post, city}
  print(person.values.toSet()); // {Aparna, Manager, Pune}
  print(person.entries.toSet()); // {MapEntry(name: Aparna), MapEntry(post: Manager), MapEntry(city: Pune)}

  /// Sorting map

}