class SpawnerVehiculos {
  ArrayList<Vehiculo> vehiculos;
  
  public SpawnerVehiculos() {
    vehiculos = new ArrayList<Vehiculo>();
    // Agrega vehículos a la lista
    vehiculos.add(new Coche(100, 200, 2.0));
    vehiculos.add(new Camion(400, 300, 1.5));
  }
  
  public void displayAndMove() {
    for (Vehiculo vehiculo : vehiculos) {
      vehiculo.move();
      vehiculo.display();
    }
  }
}
