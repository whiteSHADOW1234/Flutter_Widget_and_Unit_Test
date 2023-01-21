# uTest
## Steps
1. Add `unit_test.dart` in the `test` folder 
![](https://i.imgur.com/mEAqOdI.png)

2. Adjust some code from this script and paste it in `unit_test.dart`:
```
import 'package:flutter_test/flutter_test.dart';
import 'package:utest/counter.dart';

import 'package:utest/main.dart';

void main() {
  test('Counter value should be incremented', () {
    // setup the counter class
    final counter = Counter();
    //expect(counter.value, 0);
    
    // do the testing part
    counter.increment();
    
    // check if the result is expected
    expect(counter.value, 1);
  });
}
```
3. Create a `counter.dart` in the same directory where `main.dart` is and build up your class:
```
class Counter {
  int value = 0;
  void increment() {
    value++;
  }
}
```
4. Revise the code in `main.dart` with the class you just created:
```
//...

class _MyHomePageState extends State<MyHomePage> {
  Counter counter = Counter();

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
      //...
```

```
//...
        children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
//...
```

```
//...
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter.increment();
          });
        },
//...
```
5. Next, press the `testing` button in the left side in VScode and press `Debug Test` button

| testing button                       | Debug Test button                    |
| ------------------------------------ | ------------------------------------ |
| ![](https://i.imgur.com/DtBnz44.png) | ![](https://i.imgur.com/HkJLUTr.png) |

## Result
![](https://i.imgur.com/t8Re6rt.png)

