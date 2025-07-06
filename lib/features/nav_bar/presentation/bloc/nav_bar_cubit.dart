
import '../../../../core/export.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
static NavBarCubit get(context)=>BlocProvider.of(context);
int currentIndex=0;
  final List<Widget Function()> pageBuilders = [
        () => const HomePage(),
        () => const WishlistPage(),
        () => const BookingPage(),
        () => const ProfilePage(),

  ];
void changeBottomNav(int index){
  currentIndex=index;
  emit(NavBarChangeBottomNavState());
}
}
