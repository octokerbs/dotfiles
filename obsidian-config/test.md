# 2.4.2.3 Atributos Multivaluados 

La **mayoría** de los atributos son simples, o sea que tienen un solo valor para cada entidad, como por ejemplo la fecha de nacimiento de un estudiante. Sin embargo, en algunos casos un atributo puede tener un conjunto de valores para una misma entidad, como por ejemplo los idiomas que sabe una persona o los títulos que posee un profesional. 

Se los denota con una elipse con línea doble. 

Por ejemplo, si la entidad Estudiante tuviera un atributo idiomas, se representaría así: *
$$
\sum_{n = 1}^{}
$$

En este caso está claro que la interrelación tiene aprobada tiene origen en Estudiante y destino en Materia (el estudiante x tiene aprobada la materia y). Por convención, se tratará que las interrelaciones se lean de izquierda a derecha o de arriba hacia abajo. 

En caso de que esto no sea posible o haya ambigüedad en la interpretación de los roles de cada entidad, se escribirá el rol de cada entidad interviniente en la relación junto a la entidad. 

Cuando se trata de interrelaciones, hay 3 características a considerar: el **grado**, la **cardinalidad** y la **participación de las entidades**. 

En lo que sigue explicaremos la notación de las tres por separado, pero en un modelo deben incluirse todas simultáneamente.

