Frogger frogger;
Tortuga tortuga;
Tronco tronco;
Coche coche;
Camion camion;
SpawnerVehiculos spawner;

public void setup(){
  size (600,600);
  frogger = new Frogger();
  frogger.setPosicion(new PVector(100,100));
  spawner = new SpawnerVehiculos();
  tortuga = new Tortuga();
  tortuga.setPosicion(new PVector(width/2,height/2));
  tronco = new Tronco();
  tronco.setPosicion(new PVector(300,100));
  tronco.setAlto(43);
  tronco.setAncho(100);
  coche = new Coche(100, 200, 2.0);
  camion = new Camion(400, 300, 1.5);
  
  
}

public void draw(){
  background(0);
  frogger.display();
  tortuga.display();
  tronco.display();
  spawner.displayAndMove();
}
