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

  // 04. Future, Async & Await
  Future<String> fetchUserOrder4() {
    // Imagine that this function is more complex and slow.
    return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
  }

  // 05. Handling Errors
  Future<void> printOrderMessage2() async {

    try {
      print('Awaiting user order...');
      await fetchUserOrder3();
    } catch (err) {
      print('Caught error: $err');
    }
  }


  Future<void> fetchUserOrders() async {
    // Imagine that this function is more complex.
    Future.delayed(
        const Duration(seconds: 4),
            () => throw 'Cannot locate user order');

  }

  // void createOrderMessage() {
  //   // var order = fetchUserOrder();
  //   // print('Your order is: $order');
  //
  //   try {
  //     fetchUserOrder4();
  //   } on Exception catch (e){
  //     print(e);
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  Future<void> printOrderMessage() async {
    print('Awaiting user order...');
    var order = await fetchUserOrder4();
    print('Your order is: $order');
  }


  @override
  void initState()  {
    printOrderMessage2();
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
