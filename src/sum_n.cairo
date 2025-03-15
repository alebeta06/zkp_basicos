/// Calcula la suma de los números del 1 al n.
///
/// # Argumentos
/// * `n` - Un número de tipo u32 hasta el cual se sumarán todos los enteros desde 1.
///
/// # Retorna
/// * La suma total de los números del 1 al n.
fn sum_to_n(n: u32) -> u32 {
    // Si n es 0, la suma es 0.
    if n == 0 {
        println!("n es 0, la suma es 0");
        return 0;
    }

    // Inicializamos la suma en 0 y el contador en 1.
    let mut sum = 0;
    let mut i = 1;

    // Iniciamos un bucle para sumar todos los números desde 1 hasta n.
    loop {
        // Si i es mayor que n, hemos terminado de sumar.
        if i > n {
            // Se imprime la suma total calculada.
            println!("Se han sumado todos los numeros hasta {}", n);
            break;
        }
        // Imprime el valor que se va a agregar a la suma.
        println!("Agregando: {}", i);

        // Actualiza la suma sumándole el valor actual de i.
        sum = sum + i;

        // Incrementa i en 1 para pasar al siguiente número.
        i = i + 1;
    }

    // Imprime la suma total calculada.
    println!("Suma calculada: {}", sum);
    sum
}

/// Punto de entrada ejecutable del programa.
///
/// Esta función es el punto de entrada marcado con #[executable] y se invoca al generar la prueba
/// de conocimiento cero.
/// Recibe un número de entrada (n) y calcula la suma de los enteros del 1 a n.
/// Imprime mensajes
/// en consola para facilitar la depuraci\u00f3n y devuelve la suma total.
#[executable]
pub fn sumando_n(input: u32) -> u32 {
    // Imprime el valor de entrada.
    println!("Calculando la suma de los numeros del 1 a {}", input);

    // Llama a la funci\u00f3n sum_to_n para calcular la suma.
    let total = sum_to_n(input);

    // Imprime el resultado final.
    println!("La suma total es: {}", total);

    // Retorna el total para que se pueda generar una prueba de conocimiento cero.
    total
}
