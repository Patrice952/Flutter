import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key}) : super(key: key);

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";
  bool _valeur = false;

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  _update() {
    setState(() {
      _valeur = !_valeur;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Patrice"),
      ),
      body: Center(
        child: _valeur == false
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('1'),
                            child:
                                const Text('1', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('4'),
                            child:
                                const Text('4', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('7'),
                            child:
                                const Text('7', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('2'),
                            child:
                                const Text('2', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('5'),
                            child:
                                const Text('5', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('8'),
                            child:
                                const Text('8', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('3'),
                            child:
                                const Text('3', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('6'),
                            child:
                                const Text('6', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('9'),
                            child:
                                const Text('9', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => _updatenumber('0'),
                    child: const Text('0', style: TextStyle(fontSize: 30)),
                  ),
                  Text(
                    _number,
                    style: const TextStyle(
                        fontSize: 50, color: Color.fromRGBO(0, 0, 0, 1)),
                  )
                ],
              )
            : const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        onPressed: () => _update(),
        child: const Icon(Icons.play_arrow_sharp),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
