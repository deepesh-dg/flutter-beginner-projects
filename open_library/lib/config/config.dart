import 'package:open_library/models/nav_items.dart';

class Config {
  static const String apiKey = "AIzaSyBAoogZESLqt_khjQgh2knSDTDRZNng_OI";
  static const String baseApiUrl = "www.googleapis.com";
  static const bool https = true;

  static final List<NavItem> navItems = [
    const NavItem(name: "Love", slug: "love"),
    const NavItem(name: "Business", slug: "business"),
    const NavItem(name: "Art", slug: "art"),
    const NavItem(name: "Craft", slug: "craft"),
    const NavItem(name: "Life", slug: "life"),
    const NavItem(name: "Inspiration", slug: "inspiration"),
    const NavItem(name: "Novals", slug: "novals"),
    const NavItem(name: "Biography", slug: "biography"),
  ];
}
