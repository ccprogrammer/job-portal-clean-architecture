// import 'package:job_portal_clean_architecture/core/connection/api/api_client.dart';
// import 'package:job_portal_clean_architecture/core/errors/exceptions.dart';
// import 'package:job_portal_clean_architecture/core/injections/injection.dart';
// import 'package:job_portal_clean_architecture/core/res/api_res.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:logger/logger.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:http/http.dart' as http;

// // class MockClient extends Mock implements http.Client {}

// void main() {
//   // late MockClient httpClient;
//   late ApiClient apiClient;

//   setUp(() {
//     // httpClient = MockClient();
//     apiClient = sl<ApiClient>();
//   });

//   test(
//     'should call api client',
//     () async {

//       debugPrintStack(label: 'Response => should call api client');

//       final response = await apiClient.get(url: ApiRes.singleUser);

//       Logger().d('Response => $response');
//     },
//   );
// }
