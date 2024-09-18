## Ejericio 2

#### a)

$\begin{aligned}&\mathrm{Sea~}\mathcal{C}_{\mathcal{S}}=\{\Psi_{P}^{(n)}\mid P\text{ es un programa en }\mathcal{S},n\geq1\}\text{ la clase de funciones }\mathcal{S}\text{-parciales compu-}\\&\text{tables. Mostrar que }\mathcal{C}_{\mathcal{S}}\text{ es una clase }PRC.\end{aligned}$

Demo:
Sabemos que las clases PRC son aquellas que contienen a las inicales y ademas estan cerradas por composicion y recursion primitiva.

Recrodemos lo que vimos en clases.

Teorema  
Si h se obtiene a partir de las funciones (parciales) computables
f , g1, ... , gk por composicion entonces h es (parcial) computable.

Teorema  
Si h se obtiene a partir de g por recursion primitiva y g es
computable entonces h es computable.

Solo queda ver que las funciones iniciales estan en C_s, lo cual es cierto, visto en clases.

-------
#### b)
$\begin{aligned}&\text{Demostrar (sin definir un programa en }\mathcal{S})\text{ que la función}*:\mathbb{N}^2\to\mathbb{N}\text{ definida por }*(x,y)=x\cdot y\\&\text{es }\mathcal{S}\text{-computable.}\end{aligned}$


Sabemos por lo visto en la teorica que todas las funciones PR son computables, (*) es PR,
por lo tanto es computable.


---

#### c)
$$\mathrm{c.~Si~}f:\mathbb{N}^n\to\mathbb{N}\text{ es una función primitiva recursiva. ¿Qué podemos decir acerca de la existencia}\\\text{de un programa en el lenguaje }\mathcal{S}\text{ que la compute?}$$

Si una funcion es primitiva recursiva, entonces siempre existe un programa en el lenguaje S que la compute.

