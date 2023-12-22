import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/common/utils/language.dart';
import 'package:frontend/main/environment.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
    this.errorDetails, {
    super.key,
  });

  final FlutterErrorDetails errorDetails;

  Text _text(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }

  String _parseLocation(String text) {
    var parsed = '';
    if (text.contains('The relevant error-causing widget was:')) {
      parsed = errorDetails
          .toString()
          .split('The relevant error-causing widget was:')[1];
    }
    if (text.contains('When the exception was thrown')) {
      parsed = parsed.split('When the exception was thrown')[0].trim();
    }
    return parsed.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.red,
      child: EnvConfig.isProd
          ? _text(Language.text.genericErrorMessage)
          : Column(
              children: [
                _text(errorDetails.toStringShort()),
                const Divider(),
                _text(errorDetails.exceptionAsString()),
                const Divider(),
                _text(errorDetails.context.toString()),
                const Divider(),
                _text(_parseLocation(errorDetails.toString())),
                if (!kDebugMode) const Divider(thickness: 5),
                if (!kDebugMode) _text(errorDetails.stack.toString()),
              ],
            ),
    );
  }
}
