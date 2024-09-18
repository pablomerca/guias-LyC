# Ejercicio 6

$\textbf{Ejercicio 6.} $ Un programa $P$  en el lenguaje $\mathcal{S}$ con instrucciones $I_1,I_2,...,I_n$ se dice optimista si para todo $i=1,...,n$, si $I_i$ es la instrucción IF $V\neq0$ GOTO $L$ entonces $L$ no aparece como etiqueta de ninguna instrucción $I_j$ con $j\leq i.$
Demostrar que el siguiente predicado es primitivo recursivo:
$$r(x)=\begin{cases}1&\text{si el programa cuyo número es }x\text{es optimista}\\0&\text{caso contrario}\end{cases}$$


Sabemos que un programa se codifica como una secuencia de instrucciones y que 
cada instruccion se codifica como una 3-upla.

Un programa cuya listas de instrucciones es $[\#(I1), \ldots , \#(Ik)]$ y su codificacion es $x$.
Tiene longitud $|x + 1|$.

Como sabemos si una instruccion es un salto?
Esto pasa cuando b >= 3, y la etiqueta a la que tenemos que saltar es b-2.

Usamos un par de funciones auxiliares que tambien son PR:

- Para obtener la etiqueta de la i-esima instruccion del programa codficado x.  
$t(x,i)=l((x+1)[i])$

- Para obtener el b de la 3-upla con la que esta codificada la i-esima instruccion de x.  
$b(x,i)=r(r((x+1)[i]))$


Vamos a definir a $r(x)$ usando composicion y recursion primitiva de funiones PR.

$$r(x)=(\forall i)_{\leq|x+1|}(b(x,i)\geqslant3\to\neg(\exists j)_{\leq i}((b(x,i)-2)=t(x,j))$$

En lenguaje natural, $r(x)$ verifica que para todo $i$, si la i-esima instruccion $I_i$ es un salto a la etiqueta L, entonces no existe una j-esima instruccion (j <= i), tal que $I_j$
Tiene la etiqueta L.

