$\textbf{Ejercicio 9.}^*$ Se dice que un programa $P$ en el lenguaje se pisa con n entradas si para alguna entrada $x_1,x_2,...,x_n$ y algún tiempo $t$, la variable de salida $Y$ luego de $t$ pasos de la ejecución de $P$ con entradas $x_1,x_2,...,x_n$ vale $\#P.$
Demostrar que para cualquier $n\in\mathbb{N}$ es $\mathcal{S}$-parcial computable la función:
$$f_n(x)=\begin{cases}1&\text{si el programa cuyo número es }x\text{se pisa con }n\text{entradas}\\\uparrow&\text{caso contrario}\end{cases}$$



De nuevo, usamos el abuso de notacion, esta vez para representar una (n+1)-upla, la cual ya sabemos  
que es PR y tambien sus observadores.

$$(\exists\langle a_1,...,a_n,t\rangle) \ r((\mathrm{SNAP}(a_1,...,a_n,x,t)))[1]=x$$