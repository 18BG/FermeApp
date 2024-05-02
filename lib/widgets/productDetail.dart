import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Produit')),
        DataColumn(label: Text('Catégorie')),
        DataColumn(label: Text('BIO')),
        DataColumn(label: Text('Stock')),
        DataColumn(label: Text('Détail')),
      ],
      rows: const <DataRow>[
        DataRow(
          color: MaterialStatePropertyAll(Colors.grey),
          cells: <DataCell>[
            DataCell(Text('Example Product')),
            DataCell(Text('Category')),
            DataCell(Text('Yes')),
            DataCell(Text('10')),
            DataCell(Text('View Details')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Example Product')),
            DataCell(Text('Category')),
            DataCell(Text('Yes')),
            DataCell(Text('10')),
            DataCell(Text('View Details')),
          ],
        ),
        DataRow(
          color: MaterialStatePropertyAll(Colors.grey),
          cells: <DataCell>[
            DataCell(Text('Example Product')),
            DataCell(Text('Category')),
            DataCell(Text('Yes')),
            DataCell(Text('10')),
            DataCell(Text('View Details')),
          ],
        ),
        // Add more DataRow instances here for each product
      ],
    ));
  }
}
