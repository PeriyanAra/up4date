import 'package:up4date/app/app_shared_dependencies.dart';
import 'package:up4date/core/core_dependencies.dart';
import 'package:up4date/core/di/dependencies.dart';
import 'package:up4date/core/di/di.dart';
import 'package:up4date/device/device_dependencies.dart';
import 'package:up4date/presentation/presentation_dependencies.dart';

Future<void> registerAppDependencies(
  DI di,
) async {
  final dependenciesList = <Dependencies>[
    CoreDependencies(),
    PresentationDependencies(),
    DeviceDependencies(),
    AppSharedDependencies(),
  ];

  for (final dependencies in dependenciesList) {
    await dependencies.register(di);
  }
}
