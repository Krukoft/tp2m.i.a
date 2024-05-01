class Dado{
  private int valor;
  private int lado;
  private PVector posicion;
  
  public Dado(){
    valor=1;
  }

  public void dibujar(){
    rectMode(CENTER);
    strokeWeight(1); 
    fill(255);
    square(this.posicion.x,this.posicion.y,this.lado);
    fill(0);
    switch(this.valor){
      case 1: {
      strokeWeight(15);
      point(this.posicion.x, this.posicion.y);
      break;
    }
    case 2: {
      strokeWeight(15);
      point(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); 
      point(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); 
      break;
    }
    case 3: {
      strokeWeight(15);
      point(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3));
      point(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); 
      point(this.posicion.x, this.posicion.y);
      break;
    }
    case 4: {
      strokeWeight(15);
      point(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); 
      point(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); 
      point(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3));
      point(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3)); 
      break;
    }
    case 5: {
      strokeWeight(15);
      point(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3));
      point(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); 
      point(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3));
      point(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3));
      point(this.posicion.x, this.posicion.y);
      break;
    }
    case 6: {
      strokeWeight(15);
      point(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3));
      point(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3));
      point(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3)); 
      point(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3));
      point(this.posicion.x, this.posicion.y - (this.lado/3));
      point(this.posicion.x, this.posicion.y + (this.lado/3));
      break;
    }
     }
    }
  
  public void tirarDado(){
    this.valor = int(random(1,7));
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public void setLado(int lado){
    this.lado = lado;
  }
  public int getValor(){
    return valor;
  
  }
  
  

}
