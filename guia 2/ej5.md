## Ejercicio 5

$\begin{aligned}&\text{Demostrar que si }p:\mathbb{N}^{n+1}\to\{0,1\}\text{ es un predicado }\mathcal{S}\text{-computable (total), entonces es }\mathcal{S}\text{-parcial }\text{computable:}\\&\text{minimoNA}_p(x_1,\ldots,x_n,y)=\begin{cases}\min\{t\mid y\leq t\wedge p(x_1,\ldots,x_n,t)\}&\text{si existe algún tal }t\\\uparrow&\text{en otro caso}\end{cases}\end{aligned}$

```C
    Z <- Xₙ₊₁
[A] IF p(X₁, ... , Xₙ , Z) GOTO E
    Z <- Z + 1
    GOTO A
    Y <- Z
```

#### b)

$$f^{-1}(y)=\min_{x}(f(x)=y)$$

$f^{-1} \ $ se obtiene por composicion de funciones parciales computables, entonces es parcial computable.
