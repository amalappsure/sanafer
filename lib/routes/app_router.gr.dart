// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:base_ecom_appsure/features/company_info/models/company_info.dart'
    as _i12;
import 'package:flutter/material.dart' as _i11;
import 'package:sanafer/routes/app_router.dart' as _i2;
import 'package:sanafer/screens/authentication/registration.dart' as _i7;
import 'package:sanafer/screens/company_info.dart' as _i4;
import 'package:sanafer/screens/home/account_tab.dart' as _i1;
import 'package:sanafer/screens/home/categories_tab.dart' as _i3;
import 'package:sanafer/screens/home/home_screen.dart' as _i5;
import 'package:sanafer/screens/home/home_tab.dart' as _i6;
import 'package:sanafer/screens/reset_password.dart' as _i8;
import 'package:sanafer/screens/under_maintenance.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AccountTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountTab(),
      );
    },
    AccountsEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountsEmptyScreen(),
      );
    },
    AlertsEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AlertsEmptyScreen(),
      );
    },
    CartEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartEmptyScreen(),
      );
    },
    CategoriesEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CategoriesEmptyScreen(),
      );
    },
    CategoriesTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesTab(),
      );
    },
    CompanyInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyInfoRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CompanyInfoScreen(
          key: args.key,
          type: args.type,
        ),
      );
    },
    HomeEmptyRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeEmptyScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    HomeTab.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeTab(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegistrationScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ResetPasswordScreen(),
      );
    },
    UnderMaintenanceRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.UnderMaintenanceScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountTab]
class AccountTab extends _i10.PageRouteInfo<void> {
  const AccountTab({List<_i10.PageRouteInfo>? children})
      : super(
          AccountTab.name,
          initialChildren: children,
        );

  static const String name = 'AccountTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountsEmptyScreen]
class AccountsEmptyRoute extends _i10.PageRouteInfo<void> {
  const AccountsEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AccountsEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountsEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AlertsEmptyScreen]
class AlertsEmptyRoute extends _i10.PageRouteInfo<void> {
  const AlertsEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AlertsEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartEmptyScreen]
class CartEmptyRoute extends _i10.PageRouteInfo<void> {
  const CartEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CartEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CategoriesEmptyScreen]
class CategoriesEmptyRoute extends _i10.PageRouteInfo<void> {
  const CategoriesEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CategoriesEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoriesTab]
class CategoriesTab extends _i10.PageRouteInfo<void> {
  const CategoriesTab({List<_i10.PageRouteInfo>? children})
      : super(
          CategoriesTab.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CompanyInfoScreen]
class CompanyInfoRoute extends _i10.PageRouteInfo<CompanyInfoRouteArgs> {
  CompanyInfoRoute({
    _i11.Key? key,
    required _i12.InfoType type,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          CompanyInfoRoute.name,
          args: CompanyInfoRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'CompanyInfoRoute';

  static const _i10.PageInfo<CompanyInfoRouteArgs> page =
      _i10.PageInfo<CompanyInfoRouteArgs>(name);
}

class CompanyInfoRouteArgs {
  const CompanyInfoRouteArgs({
    this.key,
    required this.type,
  });

  final _i11.Key? key;

  final _i12.InfoType type;

  @override
  String toString() {
    return 'CompanyInfoRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [_i2.HomeEmptyScreen]
class HomeEmptyRoute extends _i10.PageRouteInfo<void> {
  const HomeEmptyRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeEmptyRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeTab]
class HomeTab extends _i10.PageRouteInfo<void> {
  const HomeTab({List<_i10.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegistrationScreen]
class RegistrationRoute extends _i10.PageRouteInfo<void> {
  const RegistrationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ResetPasswordScreen]
class ResetPasswordRoute extends _i10.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UnderMaintenanceScreen]
class UnderMaintenanceRoute extends _i10.PageRouteInfo<void> {
  const UnderMaintenanceRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UnderMaintenanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'UnderMaintenanceRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
