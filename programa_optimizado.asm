# Laboratorio: Estructura de Computadores
# Actividad: Optimización de Pipeline en Procesadores MIPS
# Objetivo: Calcular Y[i] = A * X[i] + B optimizando el flujo del pipeline.

.data
    vector_x: .word 1, 2, 3, 4, 5, 6, 7, 8
    vector_y: .space 32
    const_a:  .word 3
    const_b:  .word 5
    tamano:   .word 8

.text
.globl main

main:
    # --- Inicialización ---
    la $s0, vector_x          # Puntero a X
    la $s1, vector_y          # Puntero a Y
    lw $t0, const_a           # A
    lw $t1, const_b           # B
    lw $t2, tamano            # Tamaño del vector
    li $t3, 0                 # Contador i

loop:
    # --- Control del bucle ---
    beq $t3, $t2, fin

    # --- Carga de X[i] ---
    lw $t6, 0($s0)

    # --- Instrucción independiente ---
    # Avanza el puntero de X mientras se completa la carga.
    addi $s0, $s0, 4

    # --- Operación aritmética ---
    mul $t7, $t6, $t0
    addu $t8, $t7, $t1

    # --- Almacenamiento de Y[i] ---
    sw $t8, 0($s1)

    # --- Preparación de la siguiente iteración ---
    addi $s1, $s1, 4
    addi $t3, $t3, 1

    j loop

fin:
    li $v0, 10
    syscall