import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/footer.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Nasi Goreng',
        price: 20000,
        stok: 50,
        rating: 5,
        foto:
            'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/13073811/Praktis-dengan-Bahan-Sederhana-Ini-Resep-Nasi-Goreng-Special-1.jpg.webp'),
    Item(
        name: 'Mie Goreng',
        price: 20000,
        stok: 40,
        rating: 4,
        foto:
            'https://cdn0-production-images-kly.akamaized.net/rF9J7T6wYPBakuzlp-ym1JveG6w=/0x342:5989x3718/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3930827/original/066100900_1644554867-shutterstock_1984582070.jpg'),
    Item(
        name: 'Cap Cay',
        price: 25000,
        stok: 50,
        rating: 5,
        foto:
            'https://cdn0-production-images-kly.akamaized.net/_QeJ27HGmV0mP8gtWFe-vvfH5d0=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3147148/original/023254000_1591628473-051260000_1465292757-royco.coid.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Item"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.7, // Number of columns in the grid
              ),
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                        child: Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Hero(
                                tag: 'imageHero${item.name}',
                                child: SizedBox(
                                  height: 150,
                                  child: Image.network(
                                    item.foto.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          item.name.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Rp${(item.price)}',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 49, 49, 49),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            const TextSpan(
                                              text: 'Stok Tersisa: ',
                                            ),
                                            TextSpan(
                                              text: '${item.stok}',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.red[500],
                                ),
                                Text(item.rating.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ])));
              }),
        ),
        bottomNavigationBar: const Footer(),
        );
  }
}
