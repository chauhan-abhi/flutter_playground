import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmittedResponse(String text) {
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  decoration:
                      new InputDecoration.collapsed(hintText: "Send a message"),
                  controller: _textController,
                  onSubmitted: _handleSubmittedResponse,
                ),
              ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () =>
                      _handleSubmittedResponse(_textController.text),
                ),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
