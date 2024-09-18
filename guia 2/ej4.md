## Ejercicio 4

### a)

Se definen las siguientes variantes del lenguaje $\mathcal{S}$:

$\bullet \ \mathcal{ S}_1{:\text{Igual que }\mathcal{S}}$ pero sin la instrucción $V\leftarrow V+1$  
$\bullet \ \mathcal{ S}_2$: Igual que $\mathcal{S}$ pero sin la instrucción IF $V\neq0$ GOTO $L$  
$\bullet \ \mathcal{ S}_3$: Igual que $\mathcal{S}$ pero sin la instrucción $V\leftarrow V - 1$

Demostrar que para cada uno de estos lenguajes existe al menos una funcion S-parcial computable
que no es computable en este nuevo lenguaje.

Solucion:

---
En $S_1$ no podemos computar $f(x) = x+1$  
Demo:  

Supongamos que podemos computarla, entonces hay una secuencia de descripciones instantaneas  
$d_1, d_2, \ldots , d_k$

Llamemos $Y_i$  al valor de la variable Y en el estado de la descripcion $d_i$.

Ya que no tenemos ninguna instruccion que incremente el valor de una variable, vale que:
$Y_{i+1} \leq Y_i$  

Entonces por transitividad, $Y_k \leq Y_1$  
- $x = Y_1$
- $f(x) = x + 1 = Y_k$

Con $\ Y_1 < Y_k \ $,  pero habiamos dicho que $Y_k \leq Y_1\ $ ABSURDO, por suponer que podiamos coputar $f(x) = x+1$ 

---

En $S_2$ no podemos computar una funcion que se indefine para toda entrada.
$f(x) = \  \uparrow \ $.
Ya que no tenemos saltos condicionales, para cada par de descripciones instantaneas sucesivas: $d_i = (j, \sigma) \rightarrow d_{i+1}(j+1, \tau) $.  
Entonces nunca vamos a poder loopear, un programa que tenga n lineas, va a terminar luego de n pasos, nunca se va a indefinir.

---

En $S_3$ no podemos computar la resta natural, la demo es igual que en caso de $f(x) = x+1 \ $.

--------------


### b)

Sea $\mathcal{S}^\prime$ el lenguaje de programación definido como $\mathcal{S}$ salvo que sus instrucciones (etiquetadas o
no) son de los siguientes tres tipos (con su interpretación natural):
$$V\leftarrow V^{\prime}\\V\leftarrow V+1\\\text{IF }V\neq V^{\prime}\text{ GOTO }L$$
Demostrar que una función es parcial computable en $\mathcal{S}^\prime$ si solamente si lo es en $\mathcal{S}.$


$(\rightarrow)$

Para probar esto hay que ver que con las instrucciones de $S'$ podemos computar
$V \leftarrow V-1 \ $ y $\text{ IF  }V \neq 0 \text{ GOTO  }L$  .  

$$V \leftarrow V-1 \ $$

```C
    // X_1 es el valor de entrada, quiero X_1 - 1 de output
    Z <- Z + 1
[A] IF Z != X_1 GOTO B
    GOTO E
[B] Y <- Y + 1
    Z <- Z + 1
```



$$\text{ IF  }V \neq V' \text{ GOTO  }L$$
```C
IF V != Z GOTO L
// donde Z es una variable fresca que vale 0
```


$(\leftarrow)$

Para probar esto hay que ver que con las instrucciones de $S$ podemos computar
$V \leftarrow V' \ $ y $\text{ IF  }V \neq V' \text{ GOTO  }L$  .  

TODO 





