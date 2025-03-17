# Generando Pruebas de Conocimiento Cero en Cairo

Este proyecto con ejemplo práctico para demostrar cómo generar y verificar una prueba de conocimiento cero (ZKP) utilizando el lenguaje de programación Cairo y el probador Stwo a través de Scarb.

### Ejercicio 1
## Ejecución de un Programa de Suma

Para ejecutar un programa que calcula la suma de los números del 1 hasta un valor dado, utilizamos el siguiente comando:

```bash
scarb execute --executable-name sumando_n --print-program-output --arguments 5
```

**Salida en consola:**

```
Compiling zkp_basicos v0.1.0 (/home/alebeta/zkp_basicos/Scarb.toml)
Finished `dev` profile target(s) in 76 seconds
Executing zkp_basicos
Calculando la suma de los numeros del 1 a 5
Agregando: 1
Agregando: 2
Agregando: 3
Agregando: 4
Agregando: 5
Se han sumado todos los numeros hasta 5
Suma calculada: 15
La suma total es: 15
Program output:
15
Saving output to: target/execute/zkp_basicos/execution1
```

### Generación de la Prueba de Conocimiento Cero

```bash
scarb prove --execution-id 1
```

**Salida en consola:**

```
Proving zkp_basicos
warn: soundness of proof is not yet guaranteed by Stwo, use at your own risk
Saving proof to: target/execute/zkp_basicos/execution1/proof/proof.json
```

### Verificación de la Prueba

```bash
scarb verify --execution-id 1
```

**Salida en consola:**

```
Verifying zkp_basicos
Verified proof successfully
```

### Ejercicio 2
## Verificación de Primalidad

El ejercicio se centra en comprobar la primalidad de un número (en este caso, el número 17) mediante un algoritmo simple.

### 1. Ejecución del Programa

Para ejecutar el programa y comprobar la primalidad del número 17, se utilizó el siguiente comando:

```bash
scarb execute --executable-name n_primo --print-program-output --arguments 17
```

**Salida en consola:**

```
Numero de entrada: 17
Verificando si 17 es primo
Probando divisor: 3
No se encontró divisor menor o igual a la raíz cuadrada de 17. Entonces, 17 es primo.
Resultado: 17 es primo? true
Program output:
1
Saving output to: target/execute/zkp_basicos/execution2
```

### 2. Generación de la Prueba de Conocimiento Cero

```bash
scarb prove --execution-id 2
```

**Salida en consola:**

```
Proving zkp
warn: soundness of proof is not yet guaranteed by Stwo, use at your own risk
Saving proof to: target/execute/zkp/execution1/proof/proof.json
```

### 3. Verificación de la Prueba

```bash
scarb verify --execution-id 2
```

**Salida en consola:**

```
Verifying zkp
Verified proof successfully
```

### Ejercicio 3
## Verificación de Números Pares

El archivo `par_prover.cairo` implementa una verificación simple para determinar si un número es par.

### 1. Ejecución del Programa

Para ejecutar el programa y verificar si el número 8 es par, se utilizó el siguiente comando:

```bash
scarb execute --executable-name numero_par --print-program-output --arguments 8
```

**Salida en consola:**

```
Program output:
1
Saving output to: target/execute/zkp/execution1
```

### 2. Generación de la Prueba

```bash
scarb prove --execution-id 3
```

**Salida en consola:**

```
Proving zkp
warn: soundness of proof is not yet guaranteed by Stwo, use at your own risk
thread 'main' panicked at /cargo/git/checkouts/stwo-cairo-ef02e8e85a2fe399/c0f36e2/stwo_cairo_prover/crates/prover/src/components/range_check_builtin_bits_128/prover.rs:16:9:
assertion failed: log_size >= LOG_N_LANES
note: run with RUST_BACKTRACE=1 environment variable to display a backtrace
```

## Conclusión

Estos ejercicios demuestra cómo:
- Implementar una función para comprobar la primalidad de un número y verificar si un número es par.
- Ejecutar el programa y visualizar el proceso paso a paso mediante mensajes en consola.
- Generar y verificar pruebas de conocimiento cero usando Scarb y el probador Stwo.

¡Experimenta cambiando la entrada o ajustando el algoritmo para profundizar en el uso de pruebas de conocimiento cero en Cairo!

