import 'package:flutter/material.dart';
import '/util/constants/text_strings.dart';

class TSignupTitle extends StatelessWidget {
  const TSignupTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signUpTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
