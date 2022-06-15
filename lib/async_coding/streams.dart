import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/async_coding/streams.dart';

//https://blog.logrocket.com/understanding-flutter-streams/
enum PetState {
  CONTENT,
  MEOWING,
  PURRING,
}

enum PetAction {
  ENTERING,
  LEAVING,
}

const availablePets = <Pet>[
  Pet('Thomas', Colors.grey, PetState.CONTENT),
  Pet('Charles', Colors.red, PetState.MEOWING),
  Pet('Teddy', Colors.black, PetState.PURRING),
  Pet('Mimi', Colors.orange, PetState.PURRING),
];

class Pet {
  @override
  String toString() {
    return 'Name: $name, Color: ${color.toString()}, state: $state';
  }

  final String name;
  final Color color;
  final PetState state;

  const Pet(
    this.name,
    this.color,
    this.state,
  );
}

class PetEvent {
  final Pet pet;
  final PetAction petAction;
  final List<Pet> pets;

  const PetEvent(
    this.pet,
    this.petAction,
    this.pets,
  );
}

class StreamApp extends StatefulWidget {
  const StreamApp({Key? key}) : super(key: key);

  @override
  State<StreamApp> createState() => _StreamAppState();
}

class _StreamAppState extends State<StreamApp> {
  final petStream = StreamController<PetEvent>();
  late Stream<PetEvent> _petStream;

  @override
  void initState() {
    _petService();
    _petStream = petStream.stream;
    super.initState();
  }

  Pet randomCat() => availablePets[Random().nextInt(availablePets.length)];

  void _petService() {
    final pets = <Pet>[];
// Set up a periodic timer to emit every 3 seconds
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        // If there are less than 3 pets in the list
        // then we always want to add pets to the list
        // (otherwise a pet and come and leave over and
        // over again)
        //
        // Otherwise we're flipping a coin between 0 and 1
        final number = pets.length < 3 ? 0 : Random().nextInt(2);
        print(number);

        switch (number) {
          // 0 = A cat has arrived
          case 0:
            {
              print('Pet Service: A new cat has arrived');
              // Get a random cat
              final pet = randomCat();
              // Emit an event that a cat has arrived
              petStream.add(PetEvent(
                pet,
                PetAction.ENTERING,
                pets,
              ));
              // Add the pet to the internal list
              pets.add(pet);
              break;
            }
          // 1 = A cat is leaving
          case 1:
            {
              // Only remove pets from the list if there are any pets
              // to remove in the first place
              if (pets.isNotEmpty) {
                print('Pet Service: A cat has left.');
                // Get a random pet from the internal list
                final petIndex = Random().nextInt(pets.length);
                final pet = pets[petIndex];
                // Emit an event that the cat has left
                petStream.add(
                  PetEvent(
                    pet,
                    PetAction.LEAVING,
                    pets,
                  ),
                );
                // Remove from the internal list
                pets.removeAt(petIndex);
              }
              break;
            }
        }
      },
    );
  }
  // void _sampleStream() {
  //   StreamSubscription<DateTime>? subscription;
  //   final streamController = StreamController<DateTime>();
  //   final unsubscribeAt = DateTime.now().add(const Duration(seconds: 10));
  //   final timer = Timer.periodic(const Duration(seconds: 2), (timer) {
  //     streamController.add(DateTime.now());
  //
  //     if (DateTime.now().second % 3 == 0) {
  //       streamController
  //           .addError(() => Exception('Seconds are divisible by three.'));
  //     }
  //   });
  //
  //   subscription = streamController.stream.listen((event) async {
  //     print(event);
  //     if (event.isAfter(unsubscribeAt)) {
  //       print("It's after ${unsubscribeAt}, cleaning up the stream");
  //       timer.cancel();
  //       await streamController.close();
  //       await subscription?.cancel();
  //     }
  //   }, onError: (err, stack) {
  //     print('the stream had an error : $err');
  //   }, onDone: () {
  //     print('the stream is Done');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Streams'),
      ),
      body: StreamBuilder<PetEvent>(
        stream: _petStream,
        builder: (context, state) {
          // Check if the stream has data
          if (!state.hasData) {
            // If not, show a loading indicator
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  Text('Waiting for some pets...')
                ],
              ),
            );
          }
          // Otherwise, show the output of the Stream
          return Stack(
            children: [
              Center(
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  clipBehavior: Clip.antiAlias,
                  child: Card(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ...?state.data?.pets.map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.pets,
                                  size: 30,
                                  color: e.color,
                                ),
                                Text(e.name)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  child: Text(
                    state.data!.pet.name +
                        ' is ' +
                        describeEnum(state.data!.pet.state).toLowerCase() +
                        ' and is ' +
                        describeEnum(state.data!.petAction).toLowerCase() +
                        '.',
                  ),
                ),
              ))
            ],
          );
        },
      ),
    );
  }
}
