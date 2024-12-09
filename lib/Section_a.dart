// (a)
// Flutter is an open-source UI software development kit created by Google. It allows developers to create natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses the Dart programming language to build applications.

// Types of Applications You Can Develop with Flutter:

// Mobile Apps (iOS and Android)
// Web Apps (progressive web apps or full-fledged websites)
// Desktop Apps (Windows, macOS, Linux)

// (b)
// three Advantages of Using Flutter

// Single Codebase: You can write one codebase and deploy it to multiple platforms (iOS, Android, Web, Desktop).

// Fast Development with Hot Reload: which Changes  the code instantly in the emulator or device.

// High Performance: Flutter apps has widgets and third party laibraries , leading to high performance and minimal overhead.


// (c)
// Dart is the programming language used by Flutter to develop applications. Dart is an object-oriented, class-based language with syntax similar to languages like JavaScript, Java, and C#. It is designed for building mobile, web, and server-side applications.

// Dart was chosen because it can compile to native  code (for mobile), which results in fast performance.

// Dart easy to learn and to use .

// (d)

// Hot Reload is a feature in Flutter that allows you to instantly see the changes made in the code without losing the app's state. This means you don't have to restart your app or navigate to the page again when making UI changes.

// How it Improves Productivity:

//  Developers can instantly see UI changes, bug fixes, and adjustments, making development more efficient.
//  It retains the current state of the app (e.g., values entered into forms), so you don't have to start over with every code change.
// Immediate feedback helps in rapid iteration and testing of UI changes.

// (e)

// Rich Set of Widgets: Flutter provides a wide range of built-in widgets that are highly customizable to create beautiful UIs.
// Fast Performance: Since Flutter uses Dart and compiles to native code, it offers high performance on both Android and iOS.
// Cross-Platform Development: The ability to create apps for Android, iOS, Web, and Desktop from a single codebase is a key factor in Flutter's popularity.

// (f)
//  stateless widget is a widget that does not require mutable state. 

// example
// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Hello, Flutter!", style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// A stateful widget is a widget that has mutable state

// example
// class MyStatefulWidget extends StatefulWidget {
//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool _isAddedToCart = false;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             _isAddedToCart = !_isAddedToCart;
//           });
//         },
//         child: Text(_isAddedToCart ? "Remove from Cart" : "Add to Cart"),
//       ),
//     );
//   }
// }



// (g)
// int sum(int a, int b) {
//   return a + b;
// }
// void main() {
//   int result = sum(10, 10);
//   print(result); 
// }


// // (h)

// void checkEvenOdd(int number) {
//   if (number % 2 == 0) {
//     print('$number is Even');
//   } else {
//     print('$number is Odd');
//   }
// }


// void main() {
//   checkEvenOdd(10);
//   checkEvenOdd(7);
// }


// (i)


