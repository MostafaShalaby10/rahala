import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahala/features/nav_bar/presentation/bloc/nav_bar_cubit.dart';

import '../../../../core/export.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocConsumer<NavBarCubit, NavBarState>(
        builder: (context, state) {
          return Scaffold(

            body: NavBarCubit.get(context).pageBuilders[NavBarCubit.get(context).currentIndex](),

            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: AppColors.shark400,
              selectedItemColor: AppColors.red600,
              showUnselectedLabels: true,
              onTap: (value) {
                NavBarCubit.get(context).changeBottomNav(value);
              },
              currentIndex: NavBarCubit.get(context).currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.homeIcon,
                    color: NavBarCubit.get(context).currentIndex == 0
                        ? AppColors.red600
                        : AppColors.shark400,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.favoriteIcon,
                    color: NavBarCubit.get(context).currentIndex == 1
                        ? AppColors.red600
                        : AppColors.shark400,
                  ),
                  label: "Wishlists",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.bookingIcon,
                    color: NavBarCubit.get(context).currentIndex == 2
                        ? AppColors.red600
                        : AppColors.shark400,
                  ),
                  label: "Bookings",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.profileIcon,
                    color: NavBarCubit.get(context).currentIndex == 3
                        ? AppColors.red600
                        : AppColors.shark400,
                  ),
                  label: "Profile",
                ),
              ],
            ),

          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
