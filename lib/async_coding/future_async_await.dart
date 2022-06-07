import 'package:flutter/material.dart';

// https://dart.dev/codelabs/async-await
// A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed.

class FutureApp extends StatefulWidget {
  const FutureApp({Key? key}) : super(key: key);

  @override
  State<FutureApp> createState() => _FutureAppState();
}

class _FutureAppState extends State<FutureApp> {
  // 01. using futures wrong way
  Future<String> fetchUserOrder() =>
      // Imagine that this function is more complex and slow.
      Future.delayed(
        const Duration(seconds: 2),
        () => 'Large Latte',
      );

  // 02. Introducing futures
  Future<void> fetchUserOrder2() {
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(
        const Duration(seconds: 2), () => print('Large Latte'));
  }

  // 03. Completing with an error
  Future<void> fetchUserOrder3() {
// Imagine that this function is fetching user info but encounters a bug
    return Future.delayed(const Duration(seconds: 2),
        () => throw Exception('Logout failed: user ID is invalid'));
  }

  void createOrderMessage() {
    // var order = fetchUserOrder();
    // print('Your order is: $order');

    try {
      fetchUserOrder3();
    } on Exception catch (e){
      print(e);
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    createOrderMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future, Async & Await'),
      ),
      body: const Text('Hello'),
    );
  }
}
