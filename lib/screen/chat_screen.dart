import 'dart:io';

import 'package:chat_app/components/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  List<ChatMessageWidget> listChat = [];
  bool _stateRead = false;
  _handleSubmit(String e) {
    if (e.length == 0) return;
    print(e);
    _textController.clear();
    _focusNode.requestFocus();
    final newMessage = ChatMessageWidget(
        text: e,
        uid: "123",
        animationController: AnimationController(
            vsync: this, duration: Duration(milliseconds: 400)));

    setState(() {
      _stateRead = false;
      listChat.insert(0, newMessage);
      newMessage.animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: <Widget>[
            CircleAvatar(
              child: const Text(
                'TE',
                style: TextStyle(fontSize: 12),
              ),
              backgroundColor: Colors.blue.shade100,
              maxRadius: 13.3,
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Oscar Herrera",
              style: TextStyle(color: Colors.black87, fontSize: 12),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SizedBox(
          child: Column(
        children: <Widget>[
          Flexible(
              child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: listChat.length,
            itemBuilder: (_, i) => listChat[i],
            reverse: true,
          )),
          Divider(
            height: 100,
          ),
          _inputChat()
        ],
      )),
    );
  }

  Widget _inputChat() {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(children: <Widget>[
        Flexible(
            child: TextField(
          autofocus: true,
          controller: _textController,
          onSubmitted: (e) => _handleSubmit(e),
          onChanged: (e) {
            if (e != '' && e.length > 0) {
              setState(() {
                _stateRead = true;
              });
            } else {
              setState(() {
                _stateRead = false;
              });
            }
          },
          focusNode: _focusNode,
          decoration: InputDecoration.collapsed(hintText: "Enviar mensaje"),
        )),
        //Boton de enviar
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          child: Platform.isIOS
              ? CupertinoButton(
                  child: Text('Enviar'),
                  onPressed: _stateRead
                      ? () => _handleSubmit(_textController.text.trim())
                      : null,
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconTheme(
                    data: IconThemeData(color: Colors.blue.shade400),
                    child: IconButton(
                      splashColor: Colors.tealAccent,
                      highlightColor: Colors.transparent,
                      icon: Icon(Icons.send),
                      onPressed: _stateRead
                          ? () => _handleSubmit(_textController.text.trim())
                          : null,
                    ),
                  ),
                ),
        )
      ]),
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // TODO: off socket

    for (ChatMessageWidget message in listChat) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
