// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// import 'app_router.gr.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     final storage = FlutterSecureStorage();
//     String? token = await storage.read(key: 'token');
    
//     if (token != null && token.isNotEmpty) {
//       resolver.next(true);
//     } else {
//       router.push(SignInRoute(onResult: (result) async {
//         if (result == true) {
//           resolver.next(true);
//           router.removeLast();
//         }
//       }));
//     }
//   }
// }
