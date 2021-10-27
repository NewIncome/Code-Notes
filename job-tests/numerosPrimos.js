class Alumno {
  constructor(name) {
    this.name = name;
  }

  saludo() {
    console.log(`Hola! Mi nombre es ${this.name}`);
  }

  dime_nums_primos(n) {
    // es primo si es divisible unicamente entre si mismo y 1
    // revisar si es divisible entre los numeros anteriores
    // Si lo es, no se agrega a la lista y se pasa a rev el sig
    // DEF primos Arr
    let primos = [2];
    // loop para revisar todos los numeros antes de la cantidad 'n' de No's Primos
    let i = 3;
    while(primos.length<n) {
      // loop para revisar si el numero 'i' es divisible entre los primos anteriores
      for(let j=0 ; j<primos.length ; j++) {
        // console.log(`i:${i}, j:${j}, primos:[${primos}]`);
        // i es divisible entre el primo[j]? ese i no es primo, terminar este loop
        // para revisar el siguiente i
        if(i%primos[j] == 0) break;
        // si ya revisamos todos y no fue divisible por ninguno es primo, se agrega
        if(j==primos.length-1) primos.push(i);
      }
      i++;
    }
    return primos;
  }
}

Jimmy = new Alumno('Jimmy');
Jimmy.saludo();
console.log(Jimmy.dime_nums_primos(6));
