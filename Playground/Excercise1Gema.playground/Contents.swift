/*:
 ## Ejercicio: ¿Cuánto cabe en tu iPhone?
 
 En este ejercicio, podrás obtener la respuesta a una pregunta habitual: ¿cuánto cabe en mi iPhone?
 
 A diferencia de los ejercicios anteriores, no se proporcionará código. Sin embargo, debes tener en cuenta lo siguiente:
 
 
 - La capacidad de almacenamiento del iPhone se mide en **gigabytes** (GB).
 - El iPhone en cuestión tiene 8 GB de almacenamiento.
 - Un gigabyte equivale a aproximadamente **1000 megabytes** (MB).
 - El teléfono ya tiene **3 GB** de capacidad ocupada.
 - **Un minuto** de video ocupa **150 MB** de almacenamiento.
 
 - callout(Exercise):
 (Ejercicio):\
 ¿Cuántos minutos de video ocuparían toda la capacidad del teléfono?\
 _Pista_: Realiza todos los cálculos en megabytes (MB).
 */
let phoneStorageGB = 8
let usageStorageGB = 3
let remainingPhoneStorageGB = phoneStorageGB - usageStorageGB
let remainingPhoneStorageMB = remainingPhoneStorageGB * 1000
let minutesVideoStorageMB = 150
let totalMinutesVideo = remainingPhoneStorageMB / minutesVideoStorageMB

let horasDia = 24
let Series = 12
let Tarea = 1
let comer = 1
let tiempoUsado = horasDia - Series - Tarea - comer
//:[Anterior](@previous)  |  Página 12 de 14  |  [Siguiente: Ejercicio: Prepararse por la mañana](@next)
