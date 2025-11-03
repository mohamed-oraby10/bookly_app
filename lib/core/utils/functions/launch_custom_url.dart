import 'package:bookly_app/core/utils/functions/show_custom_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showCustomSnakBar(context, 'Cannot launch $url');
    }
  }
}
