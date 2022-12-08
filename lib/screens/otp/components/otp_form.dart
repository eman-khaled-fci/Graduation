import 'package:flutter/material.dart';

import '../../otp/components/body.dart';


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Body(),
    );
  }
}
