/// Author: Pritesh Parmar

/**
 * Roll No: CE083
 * SDP: Lab 2 - Tutorial 2
 * Chapter 2: Expressions, Variables & Constants
 */

import "dart:math";
import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;

void main(List<String> arguments) {
  // Comment is not a part of executing program. Means it does not affect anything on program. It just helps with understanding code.

  // Single-line comment

  /*
		Multi-line comment
    This are known as block comment.
	*/

  /* Comments can also be nested
		/*A nested comment */	
	*/

  /// Single-line documentation comment
  // Above comment is used to declare a documentation comment like author, topic etc...

  /** 
   * Multi-line
	 * documentation
	 * comments
	 */

  // Ctrl + Click on print to go to the Flutter docs and read about print(). It opens print.dart file and we can see print function's code over there.

  print("Hello World");

  // statements tell the computer what to do, while expressions is a value and it doesn't do anything.
  // The result is stored in a memeory address and hence it is executed even though it not assigned somewhere.
  20 + 4 + 2;
  // Above line is just an expression which does not do tell program what to do.

  // The variable is unassigned so it will give an error.
  // x;

  /**
	 * Notable types of operators in Dart:
	 * (/) --> simple division operator will generate results in decimal
	 * (~/) --> truncating division operator will generate results in integer
	 * (%) --> Euclidean modulo operator
	 */

  print(8 / 7);
  print(19 ~/ 18);

  /*
    Output:
    1.1428571428571428
    1
  */

  print(350 / 5 + 2);
  print(350 / (5 + 2));
  /*
    Operator precendence matters according to the BODMAS rule
    Output:
    72.0
    50.0
  */

  /*
   There are a lot of library math functions available in dart. To load them in our code, we must include the math library.
   dart:math is a Core Library of Dart which is imported at line number 9.
   pi and sin() are available in the dart:math library
  */
  print(sin(pi / 4));

  print(sqrt(256));

  /*
    Output:
    0.7071067811865476
    16.0
  */

  // Below line does not occure any problem, instead it just prints NaN and moves further.
  print(sqrt(-256));

  /// MINI_EXERCISE

  // -----> Now print the value of 1 over the square root of 2 in Dart. Confirm that it equals the sine of 45°.

  print(1 / sqrt(2));
  print(sin(pi / 4));

  /*
    Output:
    0.7071067811865475
    0.7071067811865476

    There is a difference at last digit but if we round it off, then both are equel.
  */

  /// This is the variable declaration, followed by variable assignment.

  int number;
  number = 123;
  print(number);

  // There are no primitive data types in dart, everything is object.
  // Because they are objects, we can access their attributes and call methods on the numbers.

  print(10.isEven);
  /*
    Output:
    true
  */

  // It automatically differentiates between the decimal . and the method invoker .

  print(3254.66.round());
  /*
    Output:
    3255
    It rounds off 3254.66 to 3255
  */

  // Dart has type-safety so no later change of type allowed
  // int age = 19;
  // age = "20";   <----------- Gives ERROR

  // To avoid this kind of error, we can use dynamic keyword. But it is not recommanded as we can change datatype anywhere.

  dynamic age = 19;
  print("Age = $age");
  age = "20";
  print("Age = $age");
  /*
    Output:
    Age = 19
    Age = 20
  */

  // var lets dart automatically infer the data type

  var n = 20; // dart determines that this is an int

  /// There are 2 types of immutable data types in dart: const, final
  /// const is used when the values are known at the compile time and final is used when the values are to be determined at the run time.

  const x = 5; // Works

  // const curr_time1 = DateTime.now().hour; // will not work
  /*
    Error:
    The hour of the day, expressed as in a 24-hour clock [0..23].

    final moonLanding = DateTime.parse('1969-07-20 20:18:04Z');
    print(moonLanding.hour); // 20
    Const variables must be initialized with a constant value.
    Try changing the initializer to be a constant expression
  */

  final curr_time = DateTime.now();
  print(curr_time.hour);
  /*
    Output:
    3
  */

  /// MINI EXERCISE

  //1) Declare a constant of type int called myAge and set it to your age.
  const myAge = 19;

  // 2) Declare a variable of type double called averageAge. Initially, set the variable to your own age. Then, set it to the average of your age and your best friend’s age.
  double averageAge = 19;
  averageAge = (19 + 18) / 2;
  print("My Age: $myAge, Average Age = $averageAge");
  /*
    Output:
    My Age: 19, Average Age = 18.5
  */

  // 3) Create a constant called testNumber and initialize it with whatever integer you’d like. Next, create another constant called evenOdd and set it equal to testNumber modulo 2. Now change testNumber to various numbers. What do you notice about evenOdd?
  const testNumber = 91;
  const evenOdd = testNumber % 2;
  print("testNumber = $testNumber, evenOdd = $evenOdd");

  /// const cannot be reassigned
  /// also, const can only be assigned to another const.
  // testNumber = 90;

  print("testNumber = $testNumber, evenOdd = $evenOdd");

  /*
    Output:
    testNumber = 91, evenOdd = 1
    testNumber = 91, evenOdd = 1
  */

  /// ----------------------->>>Challenge<<<-----------------------------

  // 1) Declare a constant int called myAge and set it equal to your age. Also declare an int variable called dogs and set that equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.
  int myAge2 = 19, dogs = 2;
  dogs++;
  print("My age is $myAge2 and number of dogs I have is $dogs");
  /*
    Output:
    My age is 19 and number of dogs I have is 3
  */

  // 2) Given the following code, change it so that it compiles
  var age2 = 16;
  print(age2);
  age2 = 30;
  print(age2);

  // 3) Work out what each answer equals when you add the following lines of code to the code above:

  const a = 46;
  const b = 10;
  const ans1 = (a * 100) + b;
  const ans2 = (a * 100) + (b * 100);
  const ans3 = (a * 100) + (b / 10);
  print("ans1 is $ans1, ans2 is $ans2 and ans3: $ans3");

  /*
    Output:
    ans1 is 4610, ans2 is 5600 and ans3: 4601.0
  */

  //4) Declare three constants called rating1, rating2 and rating3 of type double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.

  double rating1 = 9.9, rating2 = 6.9, rating3 = 7.48;
  double averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  /*
    Output:
    8.093333333333334
  */

  // 5) Declare three constants named a, b and c of type double.Then calculate the two values for x using the equation above (noting that the ± means plus or minus, so one value of x for each). Store the results in constants called root1 and root2 of type double.
  // px^2 + qx + c

  double p = 1, q = 0, c = -4;
  double delta = sqrt(pow(q, 2) - (4 * p * c));
  double root1 = (-q + delta) / 2;
  double root2 = (-q - delta) / 2;
  print("root1: $root1, root2: $root2");
  /*
    Output:
    root1: 2.0, root2: -2.0
  */
}
