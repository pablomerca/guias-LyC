#### Ejercicio 1
## a)
Definir macros para las siguientes pseudo-instrucciones (con su interpretacion natural) e indicar
en cada caso qu´e variables y que etiquetas se asumen “frescas”:

$$V_i \leftarrow k$$
Solucion:
$$
\begin{aligned}
    &Y \leftarrow 0 \\
    &Z \leftarrow 0 \\

[A] \quad &\text{ IF } k \neq 0 \text{ GOTO B} \\
    &\text{ GOTO C } \\

[B] \quad &Z \leftarrow Z + 1 \\
    &Y \leftarrow Y + 1 \\
    &k \leftarrow k - 1 \\
    &\text{ GOTO A } \\

[C] \quad &\text{ IF } Z \neq 0 \text{ GOTO D} \\
    &\text{ GOTO E } \\

[D] \quad &Z \leftarrow Z - 1 \\
    &k \leftarrow k + 1 \\
    &\text{ GOTO B }
\end{aligned}
$$


Cuando usamos:    
IF X != 0 GOTO L  
Justo abajo va el else, y a continuacion, con una etiqueta, la condicion afirmativa.

________________________

$$V_i \leftarrow V_j + k$$

Solucion:

$$
\begin{aligned}
    &Y \leftarrow k \\
    &Z \leftarrow 0 \\

[A] \quad &\text{ IF  }k \neq 0 \text{ GOTO  B} \\
    &k \leftarrow  k - 1 \\ 
    &Z \leftarrow Z + 1 \\
    &Y \leftarrow Y + 1 \\
    &\text{ GOTO A } \\

[B] \quad &\text{ IF Z  }\neq 0 \text{ GOTO C } \\
    &\text{ GOTO E } \\
[C] \quad &k \leftarrow k + 1 \\
    &Z \leftarrow Z - 1 \\
    &\text{ GOTO B }
\end{aligned}
$$
___________________

#### 
$$\text{ IF  }V_i = 0 \text{ GOTO  }L$$

Solucion: 
$$
\begin{aligned}
    &\text{IF } V_i \neq 0 \text{ GOTO A} \\
    &V_i \leftarrow V_i + 1 \\
    &\text{IF } V_i \neq 0 \text{ GOTO L} \\
[A] \quad
\end{aligned}
$$
______________

$$\text{ GOTO  }L$$
Solucion:
$$
\begin{aligned}
    &Z \leftarrow 0 \\
    &\text{IF } Z \neq 0 \text{ GOTO L}
\end{aligned}
$$


#### b)

Definir dos pseudo-programas distintos en el lenguaje S (usando las macros convenientes del
punto anterior) que computen la funcion de dos variables f(x1, x2) = x1 + x2. Para alguno
de los dos, expandir las macros utilizadas prestando atenci´on a la instanciaci´on de variables y
etiquetas frescas

```C
Y <- X1 + X2
// de froma expandida : TODO (no tengo ganas)
```

#### c)

Sea P el programa en S que resulta de expandir todas las macros en alguno de los codigos del
punto anterior. Determinar cual es la funcion computada en cada caso:

$$\begin{array}{cc}\bullet&\Psi_P^{(1)}:\mathbb{N}\to\mathbb{N}\\\bullet&\Psi_P^{(2)}:\mathbb{N}^2\to\mathbb{N}\\\bullet&\Psi_P^{(3)}:\mathbb{N}^3\to\mathbb{N}\end{array}$$

$\Psi_P^{(1)}:\mathbb{N}\to\mathbb{N}$  
Ya que solo toma una parametro de los 2 originales, entonces el segundo parametro lo deja en 0, obteniendo f(x1, 0) que es como la identidad.

$\Psi_P^{(1)}:\mathbb{N}^2\to\mathbb{N}$  
Computa f(x1, x2)

$\Psi_P^{(1)}:\mathbb{N}^3\to\mathbb{N}$  
Computa f(x1, x2) tambien, ya que el programa no hace nada con la 3ra variable, la ignora.
