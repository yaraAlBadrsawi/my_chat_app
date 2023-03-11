import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
    color: Color(0xff65799B), fontWeight: FontWeight.bold, fontSize: 1);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xff65799B), width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'any text',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff65799B), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff65799B), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
