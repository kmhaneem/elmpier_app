import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:confetti/confetti.dart';

class ElmpierPlusSuccessPage extends StatefulWidget {
  const ElmpierPlusSuccessPage({super.key});

  @override
  _ElmpierPlusSuccessPageState createState() => _ElmpierPlusSuccessPageState();
}

class _ElmpierPlusSuccessPageState extends State<ElmpierPlusSuccessPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: -100, end: 0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);

    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    _confettiController.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0, _animation.value),
                  child: const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 50.0,
                  ),
                ),
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 100.0,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "You become an Elmpier Plus User!!",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).replace(HomeRoute());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    "Go to Home",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
            ),
          ),
        ],
      ),
    );
  }
}
