import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      title: const Text("Product Name"),
      tileColor: Colors.white,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Product Code : CODE"),
          const Text("Price : \$120"),
          const Text("Quantity : 2"),
          const Text("Total Price : \$240"),
          const Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {},
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
