= Лекция 21. 

Нестранные аттракторы. Множество $A$ носит название инвариантного множества для системы ОДУ $accent(x, dot) = f(x)$, определяемой потоком ${g^t}, $ если $g^t (A) subset A$.

Мы говорили, что доказанным топологическим фактом является утверждение о том, что аттракторы могут быть четырех различных типов:

+ Точечные аттракторы, когда аттрактор представляет собой некоторую точку $x_0$ в фазовом пространстве

+ ...

+ Многомерные торы, $T^n = S'$

+ Странные аттракторы. 

Мы говорили о странных аттракторах когда говорили о ..... Но о обычных аттракторах мы не говорили. Если мы рассмотрим реальные процессы в головном мозге, то мы увидим, что кроме стандартной хаотической динамики мы наблюдаем более простые динамики, связанные с более простыми аттракторами, что более важно, переходы между простыми и сложными динамиками, и между сложными и простыми. Это называется chaos-to-order transitions, order-to-chaos transitions. Так же называют Сценарий перехода к порядку, Сценарий перехода к хаосу. Это является некоторым аналогом, обобщением бифуркаций. Так же бывают chaos-to-chaos transitions, и order-to-order transitions, что мы и называли бифуркацией. 

Для отыскания инвариантных множеств типа 1) мы должны приравнять к нулю правую часть дифференциального уравнения $f(x) = 0$ и найти решение, далее рассматриваем систему, где $x_0(t) = x_0$ является одним из корней. .....

Что мы можем сказать про точечный аттрактор? Что можно сказать относительно данного объекта в случае линейной ОДУ? 

Пусть есть система размерности $n=1, accent(x, dot) = k x, x(t) = x_o dot e^(k t)$

Если $k < 0,$ то решение убывает экспоненциально, стремится к особому решению $x = 0$. Если изобразить это на фазовой плоскости, то мы получим такую картину:

*рисунок*

Значит при $k < 0$ эта точка является точечным аттрактором для данной системы. 

В случае $k > 0$ наблюдаем обратную картину: сколько бы близко решение не было к точке $x = 0$, решение удаляется от него с экспоненциальной скоростью. Если мы это нарисуем на фазовой плоскости, получим качественно другую картину относительно прошлого. 

В нашей классификации такое ... называется репеллером. Напишем другую картину, рассмотрим пространство параметров:

*рисунок*

При $k < 0$ у нас один фазовый портрет с аттрактором. При $k > 0$ имеем дело с принципиально другим типом поведения, с той же точкой, но система работает иначе. $k = 0$ является границей между двумя разными типами поведения. Тогда точка $k = 0$ является точкой бифуркации нашей системы. 

Мы можем взять два различных отрицательных $k_1, k_2$, получим два различных решения, различных систем, но с качественной точки зрения они одинаковы. Можем взять два различных положительных $k_1, k_2$, но все еще одинаковое качественное поведение. Таким образом, бифуркационное множество ${k = 0}$ разбивает наше пространство на два различных множества. 

Теперь рассмотрим $n = 2$, системы все еще линейные, с ними легко работать, но тем ни менее на них можно показать всю теорию бифуркаций.

$ cases(
  x_1 = alpha_11 x_1 + alpha_12 x_2,
  x_2 = alpha_21 x_1 + alpha_22 x_2,
) $

.....................

Какие типы поведения содержатся в двумерной системе? Для этого мы рассмотрим вместо двумерной системы одномерную, но определенную в комплексно-значном пространстве. Пусть $z = x_1 + i x_2 in CC^1,$ тогда мы рассматриваем уравнение вида $accent(z, dot) = lambda z$, где $lambda = alpha + i omega in CC^1, z(0) = z_0$. 

Интегрируя эту систему так же как мы интегрировали соответствующее уравнение для действительнозначной переменной $x,$ получаем решение $z(t) = z_0 e^((lambda + i omega)t)$. Если мы предполагаем, что решение нашего комплексного дифференциального уравнения имеет какое-то отношение к решению исследуемого действительного ОДУ, то оно должно начинаться в действительной точке, тогда $z_0 in RR^1$.

.....

Пусть $alpha = 0$, как будет вести себя действительнозначная часть $z$? 

При переходе от $n = 1$ к $n = 2$, мы получили колебания, новый тип движения. Что будет с колебаниями при $alpha < 0$? Они будут затухать, и их можно обрамить через $e^(lambda t)$. При $alpha>0$ получаем колебания, огибаемые $e^(lambda t), $ только теперь она не затухает, а экспоненциально растет. Мы имеем дело с колебаниями возрастающей амплитуды, в физике это называется раскачкой системы, в какой-то момент система сама себя уничтожает. 

Применение оператора одействительности к нашей комплексной системе ОДУ даст нам в точности нашу систему действительных ОДУ второго порядка с соответствующими коэфициентами. Можно показать, что если мы рассмотрим систему ОДУ с произвольными $alpha_(i j)$ мы получим:

Собственные значения матрицы $Alpha$ действительны и различны. Тогда путем замены координат мы можем привести ее к виду $x_1 = lambda_1 x_1, x_2 = lambda_2 x_2$. Тогда мы получаем декартово произведение двух одномерных случаев. То есть система распадается на две независимые подсистемы, где в первой системе фигурирует только $x_1$, во второй только $x_2$, они не влияют друг на друга, и в зависимости от знаков этих двух собственных значений $lambda_1, lambda_2$ мы получаем три различных случая: \ 1) Устойчивый узел. Оба собственных значения отрицательны. По направлению $x_1, x_2$ происходит экспоненциальное схождение к единственному аттрактору $(0,0).$ \ 2) оба собственных значения положительны, получаем Неустойчивый узел. Точка $(0,0)$ представляет собой репеллер, так как по обоим направлениям мы видим отрицательный уход. \ 3) Собственные значения имеют различные знаки. Тогда по одному из направлений мы имеем экпоненциальное приближение к решению, а по другому экспоненциальное удаление решений. Этот случай носит название Седло, и это тоже репеллер. В той же ситуации когда одно собственное значение комплексно, то второе собственное значение будет ему комплексно сопряжено, что означает, что мы попали в ситуацию комплексного ОДУ.

Суммируя все вышесказанное, в случае $n = 2$ мы получили два типа движения: либо экспоненциальный рост, убывание, либо колебания. С математической точки зрения мы получили 5 вариантов аттрактора, ..........

Они составляют собой устойчивый и неустойчивый фокус. Если вы представляете колебания на фазовой плоскости, вы увидите, что мы ходим по кругу, но ее радиус становится все меньше и меньше. И обратная ситуация, когда радиус увеличивается. 

Еще один структурно неустойчивый случай, центр. 

Важное замечание. Мы рассмотрели возможные фазовые портреты, но не провели бифуркационный анализ. Но здесь это уже не такая тривиальная вещь, здесь пространство параметров состоит из четырех параметров. Что мы можем сказать по поводу бифуркационного анализа? 

Качественые изменения системы, переход между двумя качественно различными типами поведения достигается в том случае, когда происходит либо переход от двух действительных к паре комплексно сопряженных собственных значений матрицы $Alpha$, либо когда знак действительной части одного из собственных значений меняет знак, то есть проходит через 0. Так мы получили бифуркационный критерий, который явно выражается в двумерном случае. 

Следующий вопрос, который стоит задать, для $n = 1, n = 2,$ ситуация предельно простая. Оказывается в случае $n=3,4,5dots$ все так же довольно просто.

При $n>2$ мы получаем декартово произведение одномерных и двумерных случаев. А именно: рассмотрим $accent(x, dot) = A x, x in RR^n$. Предполагаем, что все собственные значения матрицы простые. Пусть мы имееем $nu$ действительных значений и $mu$ пар комплексно сопряженных, собственных значений. $n = nu + 2mu$. Тогда мы можем превратить с помощью замены координат матрицы $A$ в матрицы, составленные из Жордановых клеток первого и второго порядка. У нас будет в точности $nu$ Жордановых клеток первого порядка, и $mu$ клеток второго порядка. Соответственно, мы получим $nu + mu$ независимых систем первого и второго порядка, а поведение систем первого и второго порядка мы уже рассмотрели. В системах первого порядка только экспоненциальный рост и убывание, в системах второго порядка добавляются колебания. Таким образом в общем случае произвольного $n$ мы будем получать некоторую линейную комбинацию двух типов движения, ничего другого в линейном случае быть не может.

Когда мы говорим о бифуркациях, у нас та же самая ситуация. Мы должны посмотреть, в какой ситуации происходит изменение знака действительной части собственных значений.

.................

В нелинейном случае можем воспользоваться теоремой Гробманна-Хартмана. В окрестности ... линейная система и ее линеаризация качественно эквивалентны друг другу. Что означает, что для проведения бифуркационного анализа мы должны найти значения коэфициентов .. , провести линеаризацию в окрестности каждой из этих точек и выяснить, при каких значениях происходит изменение знака действительных значений матриц. 


