
class Food {
  final String title;
  final int price;
  final double rating;
  final String img;
  final String detail;

  Food({
    required this.title,
    required this.price,
    required this.rating,
    required this.img,
    required this.detail,
  });
}


final List<Food> itemFood = [
  Food(
    title: 'Pash',
    price: 100000,
    img: 'h1.jpg',
    rating: 4.2,
    detail: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac odio ultrices lorem mollis hendrerit vel quis massa. Vestibulum nisi nulla, vulputate a molestie nec, porttitor vitae sapien. Nullam non accumsan risus. Sed nisi est, posuere at fermentum vel, luctus in mauris. Fusce velit orci, eleifend vitae sem eu, eleifend iaculis odio. Maecenas eu vestibulum ipsum, et mollis nibh. Mauris varius leo eget turpis rhoncus posuere. Integer ut nulla non nisi finibus semper. Suspendisse id leo non sapien egestas ultricies non sed augue. Vivamus eget nisl sed quam consequat pharetra. Quisque non aliquam purus. Aliquam id augue non lorem vulputate posuere vitae ac odio.'
  ),
  Food(
    title: 'Far',
    price: 250000,
    img: 'h2.jpg',
    rating: 4.6,
    detail: 'Proin rutrum viverra fringilla. Praesent non sodales libero. Mauris pulvinar sagittis nunc, vel ullamcorper est luctus at. Curabitur vel magna vel magna malesuada viverra. Proin suscipit felis ante, eu varius dui auctor vitae. Pellentesque nec porta augue. Etiam nec nisl nec enim gravida congue. Nunc tincidunt enim eget metus facilisis ultrices. Curabitur blandit ligula faucibus, pharetra odio ut, interdum felis. Quisque eget lacinia lorem, sed facilisis lacus. Quisque non justo ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut a suscipit arcu, in condimentum nunc.'
  ),
  Food(
    title: 'Lorespao',
    price: 300000,
    img: 'h3.jpg',
    rating: 4.3,
    detail: 'Nunc ligula lacus, euismod vel nunc eu, commodo mollis arcu. Proin mattis porta ultricies. In dictum enim sed arcu hendrerit eleifend. Suspendisse condimentum in ligula eget iaculis. Nulla ut vestibulum elit, eu iaculis enim. Pellentesque tristique nibh vitae lectus eleifend pretium. Donec posuere leo at eleifend tincidunt. Nam sit amet interdum nulla. Nulla condimentum felis at elit posuere fermentum. Suspendisse vehicula eget dolor lacinia maximus. Proin semper quam odio, at mattis ex malesuada eget. Aenean elit massa, mattis sit amet libero non, feugiat sollicitudin mauris. Maecenas viverra pellentesque enim. Fusce eu porta tortor, sed fermentum nisl.'
  ),
  Food(
    title: 'Vakoai',
    price: 640000,
    img: 'h4.jpg',
    rating: 4.9,
    detail: 'Praesent porttitor massa in malesuada iaculis. Sed ac ipsum enim. Nunc ut velit in ligula pulvinar ornare. Nullam molestie erat vel quam congue congue. Cras sem orci, eleifend eu diam quis, scelerisque accumsan libero. Duis ut turpis porttitor ex scelerisque aliquet. Vivamus diam nisl, ultricies vitae convallis eget, eleifend in lacus. Donec eu ex nec turpis tincidunt accumsan. Aenean sed leo nulla. In hac habitasse platea dictumst. Pellentesque rhoncus purus ut libero tempor, vitae auctor nibh imperdiet. Integer feugiat velit vitae varius pellentesque.'
  ),
  Food(
    title: 'Paici',
    price: 300000,
    img: 'sungai.jpg',
    rating: 4.3,
    detail: 'Curabitur a nibh venenatis, eleifend turpis euismod, ultricies dolor. Integer augue eros, mattis eget metus condimentum, maximus fermentum nisl. Nulla facilisis massa nec nulla lacinia efficitur. Curabitur velit augue, laoreet sed eros ut, dictum pretium est. Aenean eu lectus laoreet, lobortis nibh vel, tincidunt eros. Aliquam iaculis tortor vel iaculis vehicula. Proin rhoncus ornare lectus, eu scelerisque est cursus a. Phasellus consectetur egestas ligula nec posuere. Maecenas et gravida odio, at vulputate lacus.'
  ),
  Food(
    title: 'My Stf',
    price: 300000,
    img: 'p3.jpg',
    rating: 9.9,
    detail: 'Aenean quis risus eget est vestibulum finibus ut sed nisl. Quisque tincidunt dui nisi, laoreet pellentesque diam vestibulum ac. Sed vehicula quis justo at viverra. Proin dictum ultrices blandit. Morbi sit amet arcu tellus. Donec volutpat diam felis, sit amet pellentesque neque maximus in. Quisque vitae vehicula erat. Maecenas accumsan in purus sit amet dictum. Praesent molestie ultrices finibus. Aliquam nec diam nec ipsum euismod euismod sit amet ac nisl. Donec semper arcu eu lorem vestibulum varius. Quisque tempus elit mauris, quis tincidunt magna mattis id. Praesent vel ipsum vestibulum, bibendum turpis at, porttitor velit. Cras pretium magna id libero venenatis elementum. Nullam ultrices malesuada placerat. In placerat lorem nec magna ultricies pellentesque.'
  ),
  Food(
    title: 'My Stf',
    price: 300000,
    img: 'p1.jpeg',
    rating: 9.9,
    detail: 'Aenean quis risus eget est vestibulum finibus ut sed nisl. Quisque tincidunt dui nisi, laoreet pellentesque diam vestibulum ac. Sed vehicula quis justo at viverra. Proin dictum ultrices blandit. Morbi sit amet arcu tellus. Donec volutpat diam felis, sit amet pellentesque neque maximus in. Quisque vitae vehicula erat. Maecenas accumsan in purus sit amet dictum. Praesent molestie ultrices finibus. Aliquam nec diam nec ipsum euismod euismod sit amet ac nisl. Donec semper arcu eu lorem vestibulum varius. Quisque tempus elit mauris, quis tincidunt magna mattis id. Praesent vel ipsum vestibulum, bibendum turpis at, porttitor velit. Cras pretium magna id libero venenatis elementum. Nullam ultrices malesuada placerat. In placerat lorem nec magna ultricies pellentesque.'
  ),
  Food(
    title: 'My Stf',
    price: 300000,
    img: 'p2.jpeg',
    rating: 9.9,
    detail: 'Aenean quis risus eget est vestibulum finibus ut sed nisl. Quisque tincidunt dui nisi, laoreet pellentesque diam vestibulum ac. Sed vehicula quis justo at viverra. Proin dictum ultrices blandit. Morbi sit amet arcu tellus. Donec volutpat diam felis, sit amet pellentesque neque maximus in. Quisque vitae vehicula erat. Maecenas accumsan in purus sit amet dictum. Praesent molestie ultrices finibus. Aliquam nec diam nec ipsum euismod euismod sit amet ac nisl. Donec semper arcu eu lorem vestibulum varius. Quisque tempus elit mauris, quis tincidunt magna mattis id. Praesent vel ipsum vestibulum, bibendum turpis at, porttitor velit. Cras pretium magna id libero venenatis elementum. Nullam ultrices malesuada placerat. In placerat lorem nec magna ultricies pellentesque.'
  ),
];
