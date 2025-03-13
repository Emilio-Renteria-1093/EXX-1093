import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Servicio {
  final int idServicio;
  final String tipoServicio;
  final double costoServicio;
  final String material;
  final String fechaInicio;
  final String fechaFinalizado;
  final String resolucionProblema;

  Servicio({
    required this.idServicio,
    required this.tipoServicio,
    required this.costoServicio,
    required this.material,
    required this.fechaInicio,
    required this.fechaFinalizado,
    required this.resolucionProblema,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
       appBar: AppBar(
        title: const Text('Emilio Renteria 22308051281093 '),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
      ),
        body: ServicioList(),
      ),
    );
  }
}

class ServicioList extends StatelessWidget {
  final List<Map<String, dynamic>> servicios = [
    {
      "id_servicio": 1,
      "tipo_servicio": "Reparación eléctrica",
      "costo_servicio": 150.0,
      "material": "Cableado, fusibles",
      "fecha_inicio": "01-03-2025",
      "fecha_finalizado": "02-03-2025",
      "resolucion_problema": "Se cambió el cableado dañado."
    },
    {
      "id_servicio": 2,
      "tipo_servicio": "Mantenimiento de plomería",
      "costo_servicio": 120.0,
      "material": "Tuberías, sellador",
      "fecha_inicio": "05-03-2025",
      "fecha_finalizado": "06-03-2025",
      "resolucion_problema": "Se repararon fugas en el sistema."
    }
  ];

  final List<Color> colores = [Colors.blue[100]!, Colors.green[100]!];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(servicios.length, (index) {
          final servicio = servicios[index];
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colores[index % colores.length],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ID: ${servicio['id_servicio']}", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Tipo: ${servicio['tipo_servicio']}", style: TextStyle(fontSize: 16)),
                    Text("Costo: \$${servicio['costo_servicio']}", style: TextStyle(fontSize: 16)),
                    Text("Material: ${servicio['material']}", style: TextStyle(fontSize: 16)),
                    Text("Inicio: ${servicio['fecha_inicio']}", style: TextStyle(fontSize: 16)),
                    Text("Finalizado: ${servicio['fecha_finalizado']}", style: TextStyle(fontSize: 16)),
                    Text("Resolución: ${servicio['resolucion_problema']}", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Divider(),
            ],
          );
        }),
      ),
    );
  }
}
