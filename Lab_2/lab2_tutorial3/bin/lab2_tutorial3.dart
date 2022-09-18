/// Author: Pritesh Parmar

/**
 * Roll No: CE083
 * SDP: Lab 2 - Tutorial 3
 * Chapter 3: Types & Operations
 */

void main(List<String> arguments) {
  // Annotating Variables Explicitly

  int myInt = 6434;
  double myDoubleNum = 16548.54;
  print("$myInt $myDoubleNum");
  /*  
    Output:
    6434 16548.54
  */

  // Constant variables annotation

  const int myIntConst = 6434;
  final double myDoubleFinal = 16548.54;
  print("$myIntConst $myDoubleFinal");
  /*  
    Output:
    6434 16548.54
  */

  // How to check the data type in dart?

  num myNumber = 44534.34;
  print(myNumber is double);
  print(myNumber is int);
  /*
    Output:
    true
    false
  */

  // print(myNumber is num);  ---------> Always true

  // Checking datatype at runtime:
  print("Type of 44534.34 -> ${myNumber.runtimeType}");
  /*
    Output:
    Type of 44534.34 -> double
  */

  // In dart, there are no implicit conversions. If you want to change a type, then we need to specify it.

  int a = 3543;
  double b = 5543.43;
  // a = b;  --------------> Error
  a = b.toInt();
  print(a);

  // but, toInt() is a runtime method. So in case of constant variables, the varible assigned toInt() should be declared as final and not const.

  const int aConst = 1;
  const double bConst = 6.2;
  // const res = (aConst * bConst).toInt();
  /*
    Error:
    Multiplies this number by [other].
    The result is an [int], as described by [int.*], if both this number and [other] are integers, otherwise the result is a [double].
  */
  final res = (aConst * bConst).toInt();
  print(res);

  // What if I want to declare 3 as double?

  // 1. specify type

  const double num1 = 3;

  // 2. convert type

  final num2 = 3.toDouble();

  // 3. specify value (as int cannot have . decimal)

  const num3 = 3.0;
  print("$num1 $num2 $num3");
  /*  
    Output:
    3.0 3.0 3.0
  */

  // The "as" keyword is used to cast down to sub-types
  // const double db1 = 8.2;
  // final integer1 = db1 as int;

  const num db1 = 8; // you need to be sure that db1 is int for "as" to work
  final integer1 = db1 as int;
  print(integer1);

  // MINI-EXERCISES

  //1) Create a constant called age1 and set it equal to 42. Create another constant called age2 and set it equal to 21. Check that the type for both constants has been inferred correctly as int by hovering your mouse pointerover the variable names in VS Code.

  const age1 = 42;
  const age2 = 21;
  // Yes -> Both are int

  // Create a constant called averageAge and set it equal to the average of age1 and age2 using the operation (age1 + age2) / 2. Hover your mouse pointer over averageAge to check the type. Then check the result of averageAge. Why is it a double if the components are all int?

  const averageAge = (age1 + age2) / 2;
  print(averageAge);
  /*
    Output:
    31.5
  */

  // Strings are immuatble in dart.

  var greeting = "Hello, Dart!";
  greeting = "Hi, I'm learning Dart.";
  print(greeting);
  /*
    Output:
    Hi, I'm learning Dart.
  */

  // Dart does not offer the char data type as in other langauages. We can use either single or double quotes for string literals
  const letter = "a"; // it is a string, and not a charter
  print(letter);

  // We can Concatenate the strings just by using the (+) operator
  var message = "Hello World!!" + " I am ";
  const name = "XYZ";
  message += name;
  print(message);
  /*
    Output:
    Hello World!! I am XYZ
  */

  // We can use the string buffer in case of a lot of concatenation. It is much more efficient as it creates a mutable location in the memory to add to the strings and then finally the toString() method converts it into the original immutable string.

  final greet = StringBuffer();
  greet.write("Hello World");
  greet.write(" I am ");
  greet.write("XYZ");
  greet.toString();
  print(greet);
  /*
    Output:
    Hello World I am XYZ
  */

  // String interpolation offers a more organized way of dealing with strings.

  final name2 = "Pritesh Parmar";
  final sentence = "My name is $name2";
  print(sentence);
  /*
    Output:
    My name is Pritesh Parmar
  */

  // If the string is too large, we can use the multi-line strings.
  final mutliGreet = '''
      Hello there guys!
      I'm learning Dart.
      It's great to learn new technologies!
    ''';
  print(mutliGreet);
  /*
    Output:
            Hello there guys!
            I'm learning Dart.
            It's great to learn new technologies!
  */

  final singleGreet = 'This is only'
      ' a single '
      'line';
  print(singleGreet);
  /*
    Output:
    This is only a single line
  */

  // Raw strings ignore the escape characters.
  // prepend r to create a raw string.

  const normal = "I study in \nDDU";
  const raw = r"I study in \nDDU";
  print(normal);
  print(raw);
  /*
    Output:
    I study in
    DDU
    I study in \nDDU
  */

  // MINI-EXERCISES

  //1) Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.

  const firstName = "Pritesh";
  const lastName = "Parmar";

  // 2) Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
  final fullname = StringBuffer();
  fullname.write(firstName);
  fullname.write(" ");
  fullname.write(lastName);
  fullname.toString();
  print(fullname);

  // 3) Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.

  final myDetails = "Hello, I am $fullname";
  print(myDetails);

  /*
    Output:
    Hello, I am Pritesh Parmar
  */

  // OBJECTS AND DYNAMIC TYPES

  dynamic x = 234;
  x = '_';
  var y; // defaults to dynamic
  y = 834;
  y = 9.3;
  print("$x $y");
  /*
    Output:
    _ 9.3
  */

  Object? myVar = 42;
  myVar = "This is the nullable-object type";
  print(myVar);
  /*
    Output:
    This is the nullable-object type
  */

  // Object? and dynamic perform the same, but there is a semantic difference between the both. Object? means we're informing that the user should be careful about the type and dynamic means that user can do anything but they are responsible if the app crashes.

  // ---------------------------->>>CHALLENGES<<<-----------------------------------

  // 1) You’re a teacher, and in your class, attendance is worth 20% of the grade, the homework is worth 30% and the exam is worth 50%. Your student got 90 points for her attendance, 80 points for her homework and 94 points on her exam. Calculate her grade as an integer percentage rounded down.
  final int grade = ((0.2 * 90) + (0.3 * 80) + (0.5 * 94)).toInt();
  print(grade);
  /*
    Output:
    89
  */

  // 2

  /* 
      const name = "Ray";
      name += "Wenderlich";
      name is declared constant and hence it's value cannot be changed later on.
    */

  // 3. double type

  const value = 10 / 2;
  print(value);
  // 4. 10 * 5 = 50

  // 4) What is the value of the constant named summary?
  const number = 10;
  const multiplier = 5;
  final summary = "$number * $multiplier = ${number * multiplier}";
  print(summary);
  /*
    Output:
    10 * 5 = 50
  */
}
