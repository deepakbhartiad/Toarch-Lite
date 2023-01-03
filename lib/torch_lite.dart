import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Torch Lite",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      controller.toggle();
                      isActive = !isActive;
                      setState(() {});
                    },
                    child: Image.asset(
                      isActive ? 'assets/torch_on.png' : 'assets/torch_of.png',
                      width: 200,
                      height: 200,
                      color: isActive ? null : textColor.withOpacity(0.4),
                    ),
                  ),
                  // SizedBox(
                  //   height: size.height * 0.1,
                  // ),
                  // CircleAvatar(
                  //   minRadius: 30,
                  //   maxRadius: 45,
                  //   child: Transform.scale(
                  //     scale: 1.5,
                  //     child: IconButton(
                  //         onPressed: () {
                  //           controller.toggle();
                  //           isActive = !isActive;
                  //           setState(() {});
                  //         },
                  //         icon: const Icon(Icons.power_settings_new)),
                  //   ),
                  // )
                ],
              ),
            ),
          )),
          Text(
            "Developed by Deepak Bharti ",
            style: TextStyle(color: textColor, fontSize: 14.0),
          ),
          SizedBox(
            height: size.height * 0.05,
          )
        ],
      ),
    );
  }
}
