import 'package:rahala/features/home/presentation/widget/header_widget.dart';
import 'package:rahala/features/home/presentation/widget/popular_area_widget.dart';
import 'package:rahala/features/home/presentation/widget/top_pick_widget.dart';

import '../../../../core/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 16.w , bottom: 28.h , top: 32.h),
              child: Column(
                spacing: 32.h,
                children: [
                  TopPickWidget(
                    items: AppListConst.topPickStaticData,
                    headerText: "Top Picks in Iran/Iraq",
                  ),
                  TopPickWidget(
                    items: AppListConst.topPickStaticData,
                    headerText: "Top Furnished Apartments",
                  ),
                  PopularAreaWidget(items: AppListConst.popularAreaStaticData,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
