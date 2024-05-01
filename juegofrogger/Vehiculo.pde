class Vehiculo extends GameObject {
  protected float velocidad;
  
  // Constructor de la clase Vehiculo
  public Vehiculo(String imagenPath, float velocidad) {
    this.imagen = loadImage(imagenPath);
    this.velocidad = velocidad;
  }
  
  // Método para mover el vehículo
  public void move() {
    // Implementación del movimiento según el tipo de vehículo
    // Por ejemplo, los coches se mueven hacia la derecha, los camiones hacia la izquierda, etc.
  }
}
