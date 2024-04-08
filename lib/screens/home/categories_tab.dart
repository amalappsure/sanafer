import 'package:base_ecom_appsure/features/app_settings/providers/settings_provider.dart';
// import 'package:base_ecom_appsure/features/home/presentation/categories/categories.dart';
import 'package:base_ecom_appsure/features/home/providers/home_provider.dart';
import 'package:base_ecom_appsure/widgets/responsive_builder.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sanafer/gen/assets.gen.dart';
import 'package:sanafer/routes/app_router.gr.dart';
import 'package:sanafer/widgets/al_sanafer_app_bar.dart';

@RoutePage()
class CategoriesTab extends ConsumerStatefulWidget {
  const CategoriesTab({
    super.key,
  });

  @override
  ConsumerState<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends ConsumerState<CategoriesTab> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _refresh());
    super.initState();
  }

  Future<void> _refresh() async {
    await ref.read(homeProvider).getCategoryListForComponent();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final state = ref.watch(categoriesProvider);
    ref.listen(settingsProvider, (previous, next) => _refresh());
    return Scaffold(
      appBar: AlSanaferAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0,right: 4.0),
          child: Assets.images.sanaferlogo.image(),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  settings.selectedLocale!.translate('Categories'),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              // state.when(
              //   onLoading: () => GridView.count(
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     padding:
              //     const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
              //       bottom: 16.0,
              //     ),
              //     crossAxisCount: 2,
              //     crossAxisSpacing: 8,
              //     mainAxisSpacing: 8,
              //     children: List.generate(
              //       6,
              //           (index) => const CategoryItemShimmer(),
              //     ),
              //   ),
              //   onSuccess: (data) => GridView.count(
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     padding:
              //     const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
              //       bottom: 16.0,
              //     ),
              //     crossAxisCount: Responsive.valueWhen(
              //       context: context,
              //       mobile: 2,
              //       smallTablet: 4,
              //       mediumTablet: 4,
              //       largeTablet: 6,
              //       desktop: 6,
              //     ),
              //     crossAxisSpacing: spacing(context),
              //     mainAxisSpacing: spacing(context),
              //     children: data
              //         .map((e) => CategoryItemBase.widget(
              //       category: e,
              //       onTap: (haveChildren) {
              //         if (haveChildren) {
              //           context.pushRoute(
              //             SubcategoriesRoute(
              //               category: e,
              //               backTitle: "Categories",
              //             ),
              //           );
              //         } else {
              //           context.pushRoute(ProductsListingRoute(
              //             category: e,
              //           ));
              //         }
              //       },
              //     ))
              //         .toList(),
              //   ),
              //   onError: (error) => const SizedBox.shrink(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  double spacing(BuildContext context) => Responsive.valueWhen(
    context: context,
    mobile: 8,
    smallTablet: 16,
    mediumTablet: 16,
    largeTablet: 16,
    desktop: 16,
  );

  // Future<dynamic> showBS(
  //     BuildContext context,
  //     AppSettingsprovider settings,
  //     int id,
  //     String title,
  //     ) =>
  //     showModalBottomSheet(
  //       context: context,
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(12),
  //           topRight: Radius.circular(12),
  //         ),
  //       ),
  //       builder: (context) => SingleChildScrollView(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(16.0).copyWith(bottom: 0.0),
  //               child: Text(
  //                 settings.selectedLocale!.translate(title),
  //                 style: Theme.of(context).textTheme.titleLarge,
  //               ),
  //             ),
  //             ListView(
  //               physics: const NeverScrollableScrollPhysics(),
  //               shrinkWrap: true,
  //               children: settings.selectedLocale!
  //                   .subCategoriesOf(id)
  //                   .map(
  //                     (category) => TextButton(
  //                   onPressed: () => context.pushRoute(
  //                     ProductsListingRoute(
  //                       category: category,
  //                     ),
  //                   ),
  //                   style: TextButton.styleFrom(
  //                     padding: const EdgeInsets.all(16.0),
  //                     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //                   ),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         category.title,
  //                         style: Theme.of(context).textTheme.bodyMedium,
  //                       ),
  //                       const Icon(
  //                         Icons.arrow_forward_ios_outlined,
  //                         size: 18.0,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               )
  //                   .toList(),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
}
