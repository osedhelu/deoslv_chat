import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final String text;
  final String uid;
  final AnimationController animationController;
  const ChatMessageWidget(
      {Key? key,
      required this.text,
      required this.uid,
      required this.animationController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
            parent: animationController, curve: Curves.elasticOut),
        child: Container(
          child: uid == '123' ? _myMessage() : _notMessage(),
        ),
      ),
    );
  }

  Widget _notMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 5, left: 5, right: 50),
        padding: EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.black87),
        ),
        decoration: BoxDecoration(
            color: Color(0xffE4E5E), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Widget _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 5, left: 40, right: 5),
        padding: EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Color(0xff4D9EF6), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
