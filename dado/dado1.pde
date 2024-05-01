Dado dado;
ArrayList<Dado> dados = new ArrayList<>();
boolean mensajeMostrado = false;
boolean finalizado = false;
int ultimoValorMostrado = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  // Mostrar el mensaje solo si el juego no ha finalizado
  if (!finalizado) {
    textSize(20);
    fill(0);
    textAlign(CENTER);
    text("Presiona 'a' para tirar los dados, 'f' para finalizar", width/2, height - 30);
  }
  
  // Mostrar los dados
  for (Dado dado : dados) {
    dado.dibujar();
  }
  
  // Mostrar el último valor del dado obtenido
  if (ultimoValorMostrado != 0) {
    mostrarValor(ultimoValorMostrado);
  }
}

void keyPressed() {
  if (!finalizado) {
    if (key == 'a') {
      println("La tecla 'a' fue presionada");
      dado = new Dado(); // Crear una nueva instancia de Dado
      dado.setPosicion(new PVector(width/2, height/2));
      dado.setLado(100);
      dado.tirarDado();
      dados.add(dado);
      ultimoValorMostrado = dado.getValor(); // Actualizar el último valor mostrado
    } else if (key == 'f') {
      finalizado = true;
      dibujarDadosConsola();
    }
  }
}

void dibujarDadosConsola() {
  println("Dados obtenidos:");
  int columna = 0;
  for (int i = 0; i < dados.size(); i++) {
    Dado dado = dados.get(i);
    print(dado.getValor() + " ");
    columna++;
    if (columna >= 4) {
      println();
      columna = 0;
    }
  }
  // Limpiar el arreglo después de mostrar los resultados
  dados.clear();
  // Reiniciar el estado para permitir más lanzamientos
  finalizado = false;
}

void mostrarValor(int valor) {
  fill(0);
  textAlign(RIGHT);
  textSize(20);
  text("Valor del dado: " + valor, width - 10, 30);
}
