import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:info_popup/info_popup.dart';

class InfoPopupDenemePage extends StatefulWidget {
  const InfoPopupDenemePage({super.key});

  @override
  State<InfoPopupDenemePage> createState() => _InfoPopupDenemePageState();
}

class _InfoPopupDenemePageState extends State<InfoPopupDenemePage> {
   InfoPopupController? _popupController;

  void _showPopup() {
    if (_popupController != null) {
      _popupController!.show();
    }
  }

  void _closePopup() {
    if (_popupController != null) {
      _popupController!.dismissInfoPopup();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Popup Example'),
      ),
      body: Center(
        child: InfoPopupWidget(
          onControllerCreated: (controller2) {
            _popupController = controller2;
          },
          customContent: () {
            return Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Popup Content'),
                  ElevatedButton(
                    onPressed: _closePopup,
                    child: Text('Close Popup'),
                  ),
                ],
              ),
            );
          },
          child: ElevatedButton(
            onPressed: () {
              _showPopup();
            },
            child: Text('Show Popup'),
          ),
        ),
      ),
    );
  }
}