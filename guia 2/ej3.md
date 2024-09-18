## Ejercicio 3


### a)

$$\begin{array}{l}\textbf{Ejercicio 3.}\text{ Decimos que un programa } P\mathrm{~es~}\textit{autocontenido si en cada instrucción IF }V\neq0\mathrm{~GOTO~}L\\\text{que ocurre en }P,L\text{ es una etiqueta definida en }P.\end{array}$$

$\text{a. Demostrar que todo programa }P\text{ tiene un programa autocontenido }P^{\prime}\text{ equivalente }(P\text{ y }P^{\prime}\text{ son}\\\text{programas equivalentes si }\Psi_P^{(n)}=\Psi_{P^{\prime}}^{(n)} \forall n\geq1).$

Que pasa en el caso en que por alguna razon puse muchas etiquetas a la nada (de salida) ?
En ese caso, si las cambio por etiquetas que esten definidas en P, entonces ya no saldria del programa??


---
### b)

Sean $P$ y $Q$ dos programas autocontenidos con etiquetas disjuntas y sea $r:\mathbb{N}^n\to\{0,1\}$ un
predicado primitivo recursivo. Definir macros   
para las siguientes   pseudo-instrucciones (con su interpretación natural):

$\bullet$ IF $r(V_1,\ldots,V_n)$ GOTO L  
$\bullet$ IF $r(V_1,\ldots,V_n)$ THEN $P$ ELSE $Q$  
$\bullet$  WHILE $r(V_1,\ldots,V_n)$ $P$  


Pregunta: $\psi_P$ es una funcion matematica, entonces no se puede usar dentro de programas S?
Hay que usarla con el programa P.

Si dentro de un programa P, quiero saltar a las instrucciones de un programa Q, como hago?
GOTO L ? donde L es una etiqueta del comienzo de Q?
    
---
### c)

$\text{ Dadas las funciones } f,g : \mathbb{N} \rightarrow \mathbb{N} \text{ definidas por: }$

$$f(x)=\begin{cases}1&\text{si } x=3\\\uparrow&\text{en otro caso}\end{cases}\quad\text{y}\quad g(x)=2x$$

$\text{Demostrar que es }\mathcal{S}\text{-parcial computable la función}\\h(x)=\begin{cases}f(x)&\text{si }x\geq5 \vee x=3\\g(x)&\text{en otro caso}\end{cases}$


g es PR, asi que es parcial computable, podemos armar facilmente un programa P que compute f, asi que tambien es parcial computable.
Entonces $f, g \in C_S$ .  
Ya que $C_S$ es una clase PRC, por lo visto en el ejercicio 5 de la practica 1, concluimos que 
$h \in C_S$, entonces $h$ es parcialmente computable.



