import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return (constraints.maxWidth > 520)
            ? const _TableDesktopMenu()
            : const _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      color: Colors.redAccent,
      child: Row(
        children: [
          CustomFlatButton(
            text: "Contador StateFul",
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigatorService>().navigateTo("/stateful"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            onPressed: () =>
                locator<NavigatorService>().navigateTo("/provider"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra Pagina",
            onPressed: () => locator<NavigatorService>().navigateTo("/123"),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      color: Colors.redAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: "Contador StateFul",
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigatorService>().navigateTo("/stateful"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            onPressed: () =>
                locator<NavigatorService>().navigateTo("/provider"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra Pagina",
            onPressed: () => locator<NavigatorService>().navigateTo("/123"),
          ),
        ],
      ),
    );
  }
}
