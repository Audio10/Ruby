# Ruby	

## ¿Qué es Ruby? Ventajas, desventajas y ¿quiénes lo están usando?

**Ruby** es un lenguaje de programación creado por Matz en 1995, es *open source* y fue popularizado por Rails en 2005. Este lenguaje es dinámico, interpretado y orientado a objetos (todo es un objeto). Su objetivo es la felicidad y productividad del desarrollador.

**Ventajas**

- Comunidad muy grande
- Muchas librerías
- Constantes actualizaciones
- Lenguaje maduro

**Desventajas**

- Interpretado puede significar lento
- Alto uso de memoria
- No paralelismo
- Ha venido decreciendo en popularidad

## Tipos de datos I: Integer, float

Las **variables** son espacios reservados en la memoria que, como su nombre indica, pueden cambiar de contenido a lo largo de la ejecución de un programa.

Para declarar una variable escribimos el nombre de la variable, utilizar el operador igual “”="" y luego el valor que será asignado a esa variable.

Existen diferentes tipos de datos: el **Integer** o entero que puede representar un subconjunto finito de los números enteros y el **Float** o real que es la representación de un real estándar.

## Declaración de variables

```ruby
x = 5
```

## Verificar tipo de objeto

```ruby
x.class
```

## Ver métodos

```ruby
x.methods
```

## Numero impar

```ruby
x.odd?
```

## Numero par

```ruby
x.even?
```

## Operaciones aritméticas.

Cuando son operaciones aritméticas y quieras retornar un float debes debes volver alguna de las variables de punto flotante.

```ruby
4/5.0 
0.80
```

## Declaración de Strings

Se ocupa **%q** para declarar variables que pueden tener comillas dentro.

```ruby
saludo = "Hola"
saludo = %q(Hola)
```

## Interpolación

Capacidad de cambiar una variable dentro de un string, esto se implementa por medio de **#{}**

```ruby
nombre = "Pepe"
saludo = "Hola #{nombre}"
```

## Métodos con Strings

### Mayúsculas.

```ruby
nombre.upcase
```

### Minúsculas.

```ruby
nombre.downcase
```

### Longitud

```ruby
nombre.length
```

### Invierte las letras Mayúsculas a minúsculas.

Ejemplo: Mi = mI

```ruby
nombre.swapcase
```

### Incluye tal carácter en la cadena.

si la variable nombre incluye la letra g.

Las interrogantes se representan por medio de **?**

```ruby
nombre.include? "g"
```

### Limpiar espacio.

```ruby
nombre.strip
```

### Si la cadena es vacía.

```ruby
nombre.empty?
```

### Sustituir palabras.

```ruby
nombre.gsub("busca", "remplaza por")
```

### Para cambiar el valor.

```ruby
nombre.gsub!(“simon”,“pepe”)
```

# **Tipos de datos III: Symbols**

Los **symbols** son un tipo de dato especial que utiliza Ruby para declarar constantes, esto existe para evitar que se generen más objetos y por lo tanto, no generar espacio de memoria adicional.

Para declarar un símbolo se utilizan los dos puntos “”:"", ejemplo:
`color = :rojo`

Se convierten a string de esta forma. Se asegura de siempre usar la misma instancia de memoria.

```ruby
:rojo.to_s
```

# Arrays

  Un **array** o arreglo es un tipo de datos especial donde vas a poder almacenar múltiples objetos en una sola variable. Son débil mente tipados.

Ejemplo:

```ruby
letras = [ ""q"", ""w"", ""e"", ""r"", ""t"", ""y""]
```

*Algo interesante de Ruby es que podemos utilizar números negativos para acceder a las posiciones desde el último elemento del array.*

Los arreglos en Ruby no tienen un tipo específico, esto quiere decir que dentro de un array podemos tener diferentes tipos de datos en cada elemento.

## Métodos

Donde suponemos que tenemos un Array **V**.

### Longitud

```ruby
v.size
```

### Acceder a un valor.

Donde los valores posibles son del -Infinito al +Infinito.

```ruby
v[0]
```

### Si el valor esta incluido.

```ruby
v.include? "valor"
```

### Primer elemento.

```ruby
v.first
```

### Ultimo elemento.

```ruby
v.last
```

### Mínimo y Máximo

```ruby
v.min
v.max
```

### Suma del arreglo

```ruby
v.sum
```

### Metodo split

Separa una cadena por espacio por ejemplo.

```ruby
cadena.split(" ")
```

### Ordenamiento

```ruby
v.sort
```

# Hashes

**Hashes**, también conocidos como arrays asociativos, mapas o diccionarios, son parecidos a los arrays en que son una colección indexada de referencias a objetos. Sin embargo, mientras que en los arrays los índices son números, en los hashes se puede indexar con objetos de cualquier tipo.

Cuando se almacena un valor en un array, se dan dos objetos: el índice y el valor. Luego, se puede obtener dicho valor, gracias al índice.

## Ejecuta estas líneas en `irb` para ver el resultado de cada instrucción

### Declaracion de un hash

```ruby
capitales = {
  "Mexico" => "Ciudad de Mexico",
  "Colombia" => "Bogota",
  "Peru" => "Lima",
  "Chile" => "Santiago de Chile",
  "España" => "Madrid",
  "Argentina" => "Buenos aires",
  "Paises bajos" => "Amsterdam",
  "Estados Unidos" => "Washington"
}
```

### Búsqueda por llaves

```ruby
capitales["Colombia"]
capitales["Argentina"]
```

### Asignación

```ruby
capitales["Marte"] = "Elon"
```

### Tamaño del hash

```ruby
capitales.size
```

### Esta vacío

```ruby
capitales.empty?
```

### Saber si hay un valor dentro del hash con un valor especifico.

```ruby
capitales.has_value? "Washington"
```

### Invertir los valores a llaves y llaves a valores

```ruby
capitales.invert
```

### Mesclar dos hashes

```ruby
capitales.merge({"Alemania" => "Berlin", "Francia" => "Paris"})
```

### Crea una copia de los valores y puedes realizar algo con ellos

```ruby
capitales.transform_values { |v| v.downcase }
```

### Verificar clase y métodos.

```ruby
{}.class
{}.methods
```

### Creando un hash a partir de un array

```ruby
[["pepito", 13], ["sutanito", 30], ["fulanito", 2]].to_h
```

# Condicionales if elsif else    

Dentro de las condiciones esta el clásico **if**, mientras que cuando es necesario poner una sentencia con mas de 2 bloques se recomienda usar **elsif**.

Para condiciones que no se cumplen y si solo queda una opción se ocupa **else**. Y es muy importante que cuando se hace una **bloque** condicional o un **loop** se cierre con un **end**

```ruby
# Condiciones
role = :user

is_authenticated = false

if role == :admin
  puts "Pantalla de admin"
elsif role == :superadmin
  puts "Pantalla de superadmin"
else
  puts "Pantalla de login"
end
```

