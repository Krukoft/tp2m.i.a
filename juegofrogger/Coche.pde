class Coche extends Vehiculo {
  public Coche(float x, float y, float velocidad) {
    super("coche.png", velocidad);
    this.posicion = new PVector(x, y);
  }
  public void move() {
    posicion.x += velocidad;
    if (posicion.x > width) {
      posicion.x = -imagen.width;
    }
  }
}
