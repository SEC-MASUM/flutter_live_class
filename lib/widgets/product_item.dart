import 'package:flutter/material.dart';
import 'package:flutter_live_class/models/product.dart';
import 'package:flutter_live_class/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: Text(product.productName),
      tileColor: Colors.white,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Product Code : ${product.productCode}"),
          Text("Price : \$${product.unitPrice}"),
          Text("Quantity : ${product.qty}"),
          Text("Total Price : \$${product.totalPrice}"),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const UpdateProductScreen();
                    }),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text("Edit"),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                label: const Text(
                  "Delete",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
