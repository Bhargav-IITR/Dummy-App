import '../Model/category.dart';

class CategoryOperations {
  CategoryOperations._();
  static List<category> getCategories() {
    return <category>[
      category('Fix You', 'Coldplay',
          'https://c-cl.cdn.smule.com/rs-s92/arr/01/3a/ed783745-a46d-4161-afb7-9b798cd94962.jpg'),
      category('Yellow', 'Coldplay',
          'https://c-cl.cdn.smule.com/rs-s79/arr/52/67/e6236249-0623-438a-9f3c-c75f1cc0ef69.jpg'),
      category('Hymn For The Weekend ', 'Coldplay',
          'https://obs.line-scdn.net/r/musicjp/c/c8c9a192b2260t0cdf6c5e/v256x256'),
      category('Paradise', 'Coldplay',
          "https://static.planetminecraft.com/files/resource_media/screenshot/1206/coldplay-paradise1_1393648_thumb.jpg"),
    ];
  }
}
