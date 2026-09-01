# dhany-diaz-estructura-computadores-act-01
Esta práctica examina mediante simulación la ejecución de instrucciones MIPS y su comportamiento dentro de un procesador segmentado. Se identifican dependencias que generan esperas en el pipeline y se reorganiza el código para mejorar su aprovechamiento. Finalmente, se comparan los resultados obtenidos para evaluar el impacto de la optimización.

# MIPS Pipeline Lab - Lenguaje de bajo nivel

## Contexto

Práctica de análisis de rendimiento en una arquitectura MIPS segmentada mediante simulación.

## ¿Qué se estudia?

Se observa cómo las dependencias entre instrucciones pueden afectar el flujo normal del pipeline y generar ciclos de espera.

## Proceso de trabajo

1. Ejecutar la implementación inicial.
2. Registrar las métricas obtenidas.
3. Identificar los riesgos presentes.
4. Reorganizar las instrucciones.
5. Ejecutar nuevamente la versión modificada.
6. Comparar los resultados.

## Implementaciones

| Archivo | Función |
|---|---|
| `programa_base.asm` | Versión inicial para el análisis |
| `programa_optimizado.asm` | Versión optimizada para mejorar el pipeline |

## Entorno de simulación

**MARS 4.5 — MIPS Assembler and Runtime Simulator**

La simulación permite observar la ejecución del programa y analizar el comportamiento de las instrucciones.

## Resultado esperado

La optimización busca disminuir las esperas del pipeline sin modificar el resultado producido por el programa.

## Autor

**Nombre del estudiante** Ing. Emily Díaz Herrera

## Asignatura 

**Estructura de Computadores 1**

**Facultad de Ingeniería**

**Programa de Ingeniería Informática**

**Universidad Internacional de La Rioja (UNIR)**

