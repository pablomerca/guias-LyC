# Ejercicio 7

Recordemos que:
si un predicado $p : \mathbb{N} \rightarrow \{0,1\}$ es S computable, entonces es S-parcial computable, el existencial no acotado sobre este.

---

$$f_1(x,y)=\begin{cases}1&\text{si } y\in\operatorname{Dom}\Phi_x^{(1)}\\\uparrow&\text{si} \text{ no}\end{cases}$$

Veamos que $f_1(x,y)$ es PR.

Se supone que $\Phi_x^{(1)}(z)$ : $\mathbb{N} \rightarrow\mathbb{N}$, sabemos que el dominio son todos los valores para los cuales la funcion esta definida.   
Entonces otra manera de pesar $f_1$ es:

$$f_1(x,y)=\begin{cases}1&\text{si }\Phi_x^{(1)}(y)\downarrow \\\uparrow&\text{si} \text{ no}\end{cases}$$

Para esto vamos a usar la funcion $\text{STP}$, la cual vimos en la teorica que es PR.

$$f_1(x,y)=(\exists t)(STP(y,x,t))$$

$STP$ es PR, por lo tanto es (total) computable.
Sabemos si tenemos un predicado PR computable, su existencial no acotado, es parcial computable, por lo tanto $f_1$ es parcial computable.

---

$$f_2(x)=\begin{cases}1&\text{si Dom}\Phi_x^{(1)}\neq\emptyset\\\uparrow&\text{si no}\end{cases}$$

Veamos que $f_1(x,y)$ es PR.

Este es parecido al anterior, solo que aca, tenemos que ver si hay un un valor $y$ tal que hay un valor $t$, tal que la funcion $x$ termina en menos de $t$ pasos.  
Notemos que ahora tenemos 2 variables libres no acotadas, por lo que si queremos "iterar"
sobre estos 2 rangos infinitos, vamos a tener que usar el truco (visto en la practica) de la codificacion biyectiva de las tuplas.

$$f_2(x,y)=(\exists t)(STP(l(t),x,r(t)))$$

Por el mismo razonamiento de antes, $f_2$ es parcial computable.

---

$$f_3(x,y)=\begin{cases}1&\text{si }y\in\operatorname{Im}\Phi_x^{(1)}\\\uparrow&\text{si no}\end{cases}$$

Veamos que $f_3(x,y)$ es PR.

$y\in\operatorname{Im}\Phi_x^{(1)}$ sii existe un $t$ tal que $\operatorname{Im}\Phi_x^{(1)}(t) = y$.

$$f_3(x,y)=(\exist t)(STP(l(t),x,r(t)) \wedge r(\text{SNAP}(l(t),x,r(t)))[1] = y)$$

STP y SNAP son funciones PR, por lo tanto son predicados computables totales, por lo antes visto, $f_3$ es parcial computable.

---
$$f_4(x,y)=\begin{cases}1&\text{si Dom}\Phi_x^{(1)}\cap\text{Im}\Phi_y^{(1)}\neq\emptyset\\\uparrow&\text{si no}\end{cases}$$

Hay que buscar un elemento que este en el dominio y en la imagen al mismo tiempo.
Queremos que se cumpla que, existan valores $a, b \ $ tal que:
$$\begin{aligned}\bullet&\phi_x(a)\downarrow\\\bullet&\phi_y(b)=a\end{aligned}$$

Usamos un abuso de notacion con pattern matching para representar la codificacion de las 3-uplas, que por el ej 12 de la practica 1, sabemos que son PR, asi como sus observadores.

$$f_4(x,y)=(\exist \langle a,b,t \rangle)(\text{STP}(a,x,t) \wedge \text{STP}(b,y,t) \wedge r(\text{SNAP}(b,y,t))[1] = a)$$


