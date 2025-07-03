
import '../../../../../core/export.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key, required this.image});
final String image ;
  @override
  Widget build(BuildContext context) {
    return     Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            right: 10.w,
            top: 10.w,
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 16,

              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
    );
  }
}
