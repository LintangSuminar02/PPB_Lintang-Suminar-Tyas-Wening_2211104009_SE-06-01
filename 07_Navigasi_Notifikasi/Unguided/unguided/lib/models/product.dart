class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}

final List<Product> products = [
  Product(
    id: '1',
    name: 'Sepatu Nike Air Max 200',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 2700000,
    imageUrl:
        'https://images.tokopedia.net/img/cache/500-square/product-1/2020/7/10/2281889/2281889_3ed6889e-553c-4643-ad2a-4574b916fc0f_800_800.jpg',
    category: 'Sepatu',
  ),
  Product(
    id: '2',
    name: 'Tas Ransel Antarestar',
    description: 'Tas ransel yang nyaman dan cocok untuk bepergian.',
    price: 200000,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5mPq85oI0Zeiqas4yR4PtJ0rtU21pVgOv6A&s',
    category: 'Tas',
  ),
  Product(
    id: '3',
    name: 'Sepatu Nike MAX 97',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 1800000,
    imageUrl:
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a3671b8-f115-44f6-9ab6-3798d55210eb/custom-nike-air-max-97-shoes-by-you.png',
    category: 'Sepatu',
  ),
  Product(
    id: '4',
    name: 'Tas Ransel',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 2700000,
    imageUrl:
        'https://vernyx.com/cdn/shop/products/TSJ474-_21_1024x1024.jpg?v=1633493160',
    category: 'Tas',
  ),
];
