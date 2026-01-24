/// String class

/// Properties
// CodeUnits: return an unmodifiable list of the UTF-16 code unit of this string.
// isEmpty: return if the string is empty
// isNotEmpty: return false if this string is empty
// length: return length of string including space, tab, and new-line char.
// runes: Used for Unicode characters (emoji, special chars)
// hashCode: Returns a hash value of the string (used in maps/sets)

/// Methods
// toLowerCase(): converts all String characters to lowercase.
// toUpperCase(): converts all String characters to uppercase.
// trim(): it remove all starting and ending space from the text.
// trimLeft(): remove left empty space.
// trimRight(): remove right empty space.
// replaceAll(): replace characters with new characters.
// split(): split string words by comma, space etc.
// toString(): represents object of string.
// subString(): use to get sub-string from any position [from 0].
// reverse.join(): reverse string.
// contains(): check is string contains another string, return bool.
// startsWith(): check is string start with another string, return bool.
// endsWith(): check is string end with another string, return bool.
// indexOf(): return index of string character.
// lastIndexOf(): return index of string character that starts from the end of the string.
// replaceFirst(): replace first matched string with another string.
// padLeft(): add number of string character before string.
// padRight(): add number of string character after string.
// splitMapJoin(): split a string using a pattern, transform both the matching and non-matching parts,
// and then join them back into a new string — all in one step.
// join(): combines elements of a list into a single string.
// where(): filter elements and keep only that match condition. where(bool Function(E e) test)
// any(): return true if any element satisfy condition.
// every(): return true if every element satisfy condition.
// expand(): take one element, turn it into multiple elements, and then flattens everything into a single sequence.
// codeUnitAt(): it return code unit of string character.
// replaceRange(): replace specific range of string with new string.
// map(): change each element into something else. map<T>(T Function(E e) transform)
// reduce(): combines all elements into a single value. reduce(E Function(E prev, E element) combine)
// fold(): same as reduce() but starts with an initial value. fold<T>(T initialValue, T Function(T prev, E element) combine)
// toList(): converts iterable into a list.
// StringBuffer(): mutable string builder used to efficiently construct strings
// string is immutable and stringBuffer is mutable.

// onMatch(): runs only on the parts that match the RegExp.
// m: object, represent matched pattern.
// contains: m.group(0) → matched text, m.start → start index, m.end → end index.

// onNonMatch(): runs on everything that is not matched by the pattern
// n: string, contains: non-matching text segment.

/// compareTo(): compare two strings and return int values
// return 0 if string are equal.
// returns a positive value if the first string is greater than the second
// returns a negative value if the first string is smaller than the second

void main() {
  String str = 'Hi ';
  var runes = '👏';

  /// properties
  print(str.codeUnits); // [72, 105, 32]
  print(str.isEmpty); // false
  print(str.isNotEmpty); // true
  print(str.length); // 3
  print(runes.runes); // (128079)
  print(runes.runtimeType); // String
  print('Hello'.hashCode); // 828172268

  String name = 'SoNaLi';
  String trim = "  Sonali    "; // length is 12
  String intro = "I am sonali and i am male";
  String names = 'Sonali, Ratndeep, Rahul';
  String data = 'hello world';

  /// methods

  // toLowerCase(), toUpperCase()
  print(name.toLowerCase()); // sonali
  print(name.toUpperCase()); // SONALI

  // trim(), trimLeft(), trimRight()
  print(trim.trim()); // Sonali
  print(trim.trimLeft()); // Sonali____
  print(trim.trimRight()); // __Sonali

  // compareTo()
  print("c".compareTo("a")); // c comes after a (first greater than second) 1
  print("a".compareTo("a")); // 0
  print("a".compareTo("b")); // a comes before a (first is smaller than second) -1

  // replaceAll()
  String correctIntro = intro.replaceAll('male', 'female');
  print(correctIntro); // I am sonali and i am female

  // split()
  List<String> namesList = names.split(',');
  print(namesList); // [Sonali,  Ratndeep,  Rahul]

  // toString()
  print(20.toString()); // 20

  // substring()
  print(intro.substring(5)); // sonali and i am male
  print(intro.substring(5, 6)); // s

  // reverse the string
  print(trim.split('').reversed.join()); // ilanoS

  // Capitalized first letter of string
  print('${data[0].toUpperCase()}${data.substring(1)}'); // H hello world

  // contains()
  print('Hello world'.contains("world")); // true

  // startsWith(), endWith()
  print("flutter".startsWith("flu")); // true
  print("flutter".endsWith("ter")); // true

  // indexOf(), lastIndexOf()
  print("hello world".indexOf("o")); // 4
  print("hello world".lastIndexOf("o")); // 7

  // replaceFirst()
  print("one one two".replaceFirst("one", "1")); // 1 one two

  // padeLeft(), padRight()
  print("5".padLeft(2, '0')); // 05
  print("5".padRight(3, '*')); // 5**

  // any(), every()
  print(["a", "", "b"].any((e) => e.isEmpty));   // true
  print(["a", "b"].every((e) => e.isNotEmpty)); // true

  // onMatch(), onNonMatch(), splitMapJoin()
  print(
    "a1b2".splitMapJoin(
      RegExp(r'\d'), // pattern: match any digit (0–9)
      onMatch: (m) => '*', // onMatch "1", "2" --> "*"
      onNonMatch: (n) => n, // onNonMatch "a", "b" --> n
    ),
  ); // a*b*

  // match any digit from 0 to 9
  print("abc123".contains(RegExp(r'\d'))); // true

  // where()
  print([1, 2, 3, 4].where((e) => e.isEven)); // (2, 4)

  // reduce()
  print([1, 2, 3, 4].reduce((a, b) => a + b)); // 10
  // 1 + 2 = 3
  // 3 + 3 = 6
  // 6 + 4 = 10

  // fold()
  print([1, 2, 3].fold(0, (a, b) => a + b).toString()); // 6
  // 0 + 1 = 1
  // 1 + 2 = 3
  // 3 + 3 = 6

  // split + where + map + join
  print("hello   world flutter"
      .split(' ') // ["hello", "", "", "world", "flutter"]
      .where((e) => e.isNotEmpty) // ["hello", "world", "flutter"]
      .map((e) => e[0].toUpperCase() + e.substring(1)) // ["Hello", "World", "Flutter"]
      .join(' ') // add one space between words and combine list elements into one string
  ); // Hello World Flutter

  // split + where + join
  print(
    "hello   world"
        .split(' ') // result ["hello", "", "", "world"]
        .where(
            (e) => e.isNotEmpty
    ) // e: each element of list. e.isNotEmpty: keep only non-empty string. result ["hello", "world"]
        .join(' '), // joint elements with one space.
  ); // hello world

  // expand() = map() + flatten
  print(
    "hello world"
        .split(' ') // ["hello", "world"]
        .expand(
          (e) => e.split(''),
      // e: each word → split word into characters
      // internally becomes:
      // [ ["h","e","l","l","o"], ["w","o","r","l","d"] ]
      // then flatten into a single iterable
    ),
  ); // (h, e, l, l, o, w, o, r, l, d)
  /// Note: split(' '): split by space [Break the string wherever a space occurs (Result is words)]
  /// split(''): split by character [Break the string into individual characters (Result is letters)]

  // codeUnitAt()
  print("A".codeUnitAt(0)); // 65

  // map() + toList()
  print(
     [1, 2, 3]
      .map((e)=> e*2) // (2, 4, 6)
      .toList()); // [2, 4, 6]

  // buffer string
  var buffer = StringBuffer(); // create an empty buffer in memory
  buffer.write("Hello "); // add "Hello" to buffer, not crate new string
  buffer.write("World"); // appends "World" to same buffer, not multiple string
  print(buffer.toString()); // convert buffer to string, Hello World

  print("Ratndeep".replaceRange(4, 8, "Sonali")); // RatnSonali

  /// String Concatenation: Join multiple string together using + operator
  String firstName = "Sonali";
  String lastName = "Kumari";
  String fullName = firstName + " " + lastName;
  print(fullName); // Sonali Kumari

  int age = 25;
  print('Age is ' + age.toString()); // Age is 25

  /// String Interpolation: Embedding variables or expressions directly inside a string using $
  print('My name is $name and I am $age years old'); // My name is SoNaLi and I am 25 years old

  // Expression inside interpolation
  int a = 10, b = 20;
  print("Sum is ${a+b}"); // Sum is 30

  // Access properties / methods
  String text = 'Ratndeep';
  print("Length: ${text.length}"); // Length: 8
  print("Uppercase: ${text.toUpperCase()}"); // Uppercase: RATNDEEP

  // multiline string
  String message = '''
  My name is
  Ratndeep
  Chandankhede 
  ''';
  print(message);
  // My name is
  // Ratndeep
  // Chandankhede

}
