class Tronco extends GameObject{
  private int ancho;
  private int alto;
  
  public Tronco(){
    this.imagen = loadImage("log.png");
  }
  
  public void setAncho(int ancho){
    this.ancho=ancho;  
  }
  
  public int getAncho(){
    return this.ancho;
  }
  
  public void setAlto(int alto){
    this.alto=alto;
  }
  
  public int getAlto(){
    return this.alto;
  }
  
  public void dispaly(){
    image(this.imagen, this.posicion.x, this.posicion.y,this.ancho,this.alto);
  }
  
}
