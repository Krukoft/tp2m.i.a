class Camion extends Vehiculo {
  public Camion(float x, float y, float velocidad) {
    super("camion.png", velocidad);
    this.posicion = new PVector(x, y);
  }
  public void move() {
    posicion.x -= velocidad;
    if (posicion.x < -imagen.width) {
      posicion.x = width;
    }
  }
}
