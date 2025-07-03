import '../../../../core/export.dart';

class GuestsWidget extends StatefulWidget {
  const GuestsWidget({super.key, required this.items});

  final List<GenericModel> items;

  @override
  State<GuestsWidget> createState() => _GuestsWidgetState();
}

class _GuestsWidgetState extends State<GuestsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shark700.withOpacity(0.16),
            offset: const Offset(0, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            text: "Guests",
            fontWeight: FontWeight.w600,
            fontColor: AppColors.shark950,
            fontSize: 16,
          ),
          SizedBox(height: 14.h),
          Column(
            spacing: 16.h,
            children: List.generate(
              widget. items.length,
                  (index) =>
                  Container(
                    padding: EdgeInsetsGeometry.only(
                      left: 16.w,
                      right: 8.w,
                      top: 11.h,
                      bottom: 11.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.shark50,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: widget.items[index].title!,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontColor: AppColors.shark950,
                            ), CustomTextWidget(
                              text: widget.items[index].subTitle!,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              fontColor: AppColors.shark500,
                            ),
                          ],
                        ),),

                        IconButton(onPressed: () {
                          if(widget.items[index].counter! > 0){
                          setState(() {
                          widget.items[index].counter = widget.items[index].counter! -1;
                          });
                          }
                        }, icon: const Icon(Icons.remove_circle_outline)),
                        CustomTextWidget(text: widget.items[index].counter.toString(),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontColor: AppColors.shark950,),
                        IconButton(onPressed: () {
                            setState(() {
                              widget.items[index].counter = widget.items[index].counter! + 1;
                            });

                        }, icon: const Icon(Icons.add_circle_outline)),

                      ],
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
