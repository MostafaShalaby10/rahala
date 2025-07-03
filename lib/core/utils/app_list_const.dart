import 'package:rahala/core/export.dart';

class AppListConst {
  AppListConst._();

  static List<GenericModel> topPickStaticData = [
    GenericModel(
      image: AppImages.hotelImage,
      type: "Hotel",
      rate: "4.0",
      title: "Espinas International",
      price: "120",
      address: "Valiasr Square, Keshavarz Blvd, Tehran, Iran",
      description:
          "A luxury 5-star hotel in the heart of Tehran, combining elegance, modern comfort, and top-class service. Perfect for business trips and cultural stays.",
      images: [
        AppImages.roomImage,
        AppImages.room1Image,
        AppImages.room2Image,
        AppImages.room3Image,
      ],
      totalReviews: "675",
    ),
    GenericModel(
      image: AppImages.hotelImage,
      type: "Apartment",
      rate: "5.0",
      title: "Tehran Furnished ",
      price: "5",
      address: "Valiasr Square, Keshavarz Blvd, Tehran, Iran",
      description:
          "A luxury 5-star hotel in the heart of Tehran, combining elegance, modern comfort, and top-class service. Perfect for business trips and cultural stays.",
      images: [
        AppImages.roomImage,
        AppImages.room1Image,
        AppImages.room2Image,
        AppImages.room3Image,
      ],
      totalReviews: "675",
    ),
    GenericModel(
      image: AppImages.hotelImage,
      type: "Apartment",
      rate: "5.0",
      title: "Tehran Furnished ",
      price: "5",
      address: "Valiasr Square, Keshavarz Blvd, Tehran, Iran",
      description:
          "A luxury 5-star hotel in the heart of Tehran, combining elegance, modern comfort, and top-class service. Perfect for business trips and cultural stays.",
      images: [
        AppImages.roomImage,
        AppImages.room1Image,
        AppImages.room2Image,
        AppImages.room3Image,
      ],
      totalReviews: "675",
    ),
  ];

  static List<GenericModel> popularAreaStaticData = [
    GenericModel(image: AppImages.tehranImage, title: "Tehran"),
    GenericModel(image: AppImages.isfahanImage, title: "Isfahan"),
    GenericModel(image: AppImages.erbiImage, title: "Erbil"),
  ];

  static List<GenericModel> facilitiesStaticData = [
    GenericModel(
      items: [
        GenericModel(title: "2 restaurant", image: AppImages.restaurantIcon),
        GenericModel(title: "Private bathroom", image: AppImages.bathroomIcon),
      ],
    ),
    GenericModel(
      items: [
        GenericModel(
          title: "Ari conditioning",
          image: AppImages.airConditionIcon,
        ),
        GenericModel(title: "Spa", image: AppImages.spaIcon),
        GenericModel(title: "Parking", image: AppImages.parkingIcon),
      ],
    ),
    GenericModel(
      items: [
        GenericModel(title: "Free Wifi", image: AppImages.wifiIcon),
        GenericModel(title: "Room service", image: AppImages.roomServiceIcon),
        GenericModel(title: "View", image: AppImages.viewIcon),
      ],
    ),
    GenericModel(
      items: [
        GenericModel(title: "Fitness center", image: AppImages.fitnessIcon),
        GenericModel(title: "Flat-screen TV", image: AppImages.tvIcon),
      ],
    ),
  ];
  static List<GenericModel> reviewsStaticData = [
    GenericModel(
      title:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      rate: "4.0",
      date: "Oct 24, 2024",
      name: "John ",
      image: AppImages.userImage,
    ),
    GenericModel(
      title:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      rate: "2.0",
      date: "Oct 24, 2024",
      name: "Gorgia ",
      image: AppImages.userImage,
    ),
    GenericModel(
      title:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      rate: "3.0",
      date: "Oct 24, 2024",
      name: "John ",
      image: AppImages.userImage,
    ),
  ];

  static List<GenericModel> guestsStaticData = [
    GenericModel(title: "Adults", subTitle: "Ages 13 or above", counter: 0),
    GenericModel(title: "Children", subTitle: "Ages 2-12", counter: 0),
    GenericModel(title: "Infants", subTitle: "Under 2", counter: 0),
  ];
  static List<GenericModel> roomTypeStaticData = [
    GenericModel(title: "Standard Room – BHD 80"),
    GenericModel(title: "Deluxe Room – BHD 95"),
    GenericModel(title: "Suite – BHD 130"),
  ];
}
