// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// // final GetIt sl = GetIt.instance;

// // void setup() {
// //   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

// //   // Register the BillRepository
// //   sl.registerLazySingleton(() => BillRepositoryImpl(flutterLocalNotificationsPlugin));

// //   // Register use cases
// //   sl.registerLazySingleton(() => GetAllBills(sl<BillRepositoryImpl>()));
// //   sl.registerLazySingleton(() => SetBillReminder(sl<BillRepositoryImpl>()));

// //   // Register the BillBloc
// //   sl.registerFactory(() => BillBloc(
// //     getAllBills: sl<GetAllBills>(),
// //     setBillReminder: sl<SetBillReminder>(),
// //   ));
// // }

// // void main() {
// //   setup(); // Call the setup function to register dependencies

// //   runApp(const BillApp());
// // }

// class BillApp extends StatelessWidget {
//   const BillApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bill Payment Reminder',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const HomePage(),
//         // '/bills': (context) => BillPage.route(),
//       },
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/bills');
//           },
//           child: const Text('Go to Bills Page'),
//         ),
//       ),
//     );
//   }
// }
