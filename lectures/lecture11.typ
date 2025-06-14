= Лекция 11. Численные методы решения задач вариационного исчисления. 

Мы установили, что задача машинного обучения представляет собой вариационную подстановку для некоторого сложного нелинейного уравнения в частных производных. Более того, есди речь идет, действительно, о сильном искусственном интеллекте, то мы должны не просто найти метод решения этой задачи, но мы должны найти метод построения полной бифуркационной картины. То есть, множество всех ветвей решения, которые отвечают различным сценариям обучения этой нейросетевой системы, или различные варианты поведения системы сильного искусственного интеллекта. В идеале предполагается, что мы умеем управлять этими вариантами перехода между сценариями поведения. Мы должны поставить задачу оптимального управления, точнее, задачу оптимального управления в теории бифуркаций. 

Пока что поговорим о более "простых" вещах. 

//наука не про вчера -- это история. наука не про сегодня, это инженииринг. наука про будущее. мы приблизились к краю науки. 
Во всех практически значимых случаях не существует аналитического способа решения _нелинейных_ уравнений в частных производных. Для линейных существует множество аналитических решений. Но мир нелинеен. И описывается _нелинейными_ уравнениями в частных производных.

//уравнения математической физики, уравнения в частных производных
Рассмотрим классическе методы решения уравнений в частных производных, данных своей вариационной постановкой (это верно для функционалов от любого числа переменных, однако мы рассмотрим для двух ради понимания).

Имеем функционал:

$ I[u] = integral.double F(u, u'_x, u'_y, dots, ) d x d y -> e x t r $

Где $ u'_x = (partial u(x, y))/(partial x), u'_y = (partial u(x, y))/(partial y), u_(x^n y^m)^(n + m) = (partial^(n + m) u(x,y))/(partial x^n partial y^m) $

Первый классический метод решения уравнений в частных производных, данных вариационной постановкой, верно скорее для линейных, чем для нелинейных, носит название Ритза (Rietz). Он заключается в том, что мы представляем неизвестную функцию $u(x,y)$ в виде конечного отрезка ряда:

$ u(x,y) approx sum^(N)_(i = 1) a_i dot phi^*_i (x) dot phi^*_i (y) $

Звездочками будем помечать известные функции и коэфициенты.

$phi^*_i (x), phi^*_i (y)$ --  заданные функции, образующие систему ортогональных функций.

Один из мощных инструментов практического решения задач в прикладной математике являются так называемые системы ортонормированных функций. 

Система ортонормированных функций -- это система функций:

$ {phi^*_i (x)} |_(i = overline((1, infinity))) arrow.r.hook integral phi^*_i (x) phi^*_j (x) d x = cases(
  1" , "i = j,
  0" , "i != j
) $ 

Если есть только второе требование (0, $i != j$), а первое требует лишь конечности, то мы говорим о системе ортогональных функций. Поскольку любая функция, непрерывная и даже терпящая конечное число разрывов, может быть представлена как линейная комбинация из ортогональных функций:

$ f(x) = sum_(i=1)^infinity alpha_i phi^*_i (x) $

То система ортогональных функций представляет собой базис в бесконечномерном пространстве функций. Аналогично тому, как конечная система ортогональных векторов представляла собой базис в конечномерном пространстве векторов, то бесконечная система ортогональных функций представляет собой базис в бесконечномерном функциональном пространстве. Функциональные пространства потому и называются бесконечномерными, что их базис бесконечен.

Примером такого рода базиса является базис Фурье. Всякая непрерывная функция, или функция, терпящая конечное число разрывов, может быть однозначно представлена в виде ее разложения в ряд Фурье. Кроме классического базиса Фурье существует масса других базисов (базисы Харра, Уолша, базисы функций Бесселя, базисы, составленные из вэйвлетов, и так далее). 

Общая теорема, устанавливающая необходимые условия того, что данная система функций действительно представляет из себя базис, носит название теоремы Стоуна-Вейерштрасса (Stone--Wiezstrass). На идее ортогонального базиса основывается значительное число функций, значительное число различных методов решения задач. Например, если взять линейное уравнение в частных производных (в дифференциальной постановке) и подставите в него представление функции $u(x,y)$ в виде конечного отрезка такого ряда, то во многих практически значимых случаях вы сможете вынести $ phi^*_i (x) dot phi^*_i (y)$ и получите линейную систему алгебраических уравнений порядка $n$. В таких случаях используют не привычный, медленный метод Гауссаа, а более продвинутые методы численного решения.

#pagebreak()

Обратно к методу Ритза. Если мы подставим представление функции $u(x,y)$ в наш функционал и при необходимости разложим функцию $f$ в ряд тейлора, мы тем самым превратим этот функционал просто в функцию многих переменных, а именно переменных $a_i.$ Рассмотрим на примере:

$ integral^1_0 integral^1_0 [ ((partial u)/(partial x))^2 + ((partial u)/(partial y))^2 + 2 f(x,y) " " u(x,y)" " d x "" d y ] -> e x t r $

Давайте вместо $u(x,y)$ подставим наше представление $u(x,y) approx sum^(N)_(i = 1) a_i phi^*_i (x) phi^*_i (y)$

$ integral^1_0 integral^1_0 [ sum^N_(i = 1) sum^N_(j = 1) a_i a_j phi^(' *)_i (x) phi^('*)_j (x) phi^*_i (y) phi^*_j (y) + sum^N_(i = 1) sum^N_(j = 1) a_i a_j phi^*_i (x) phi^*_j (x) phi^('*)_i (y) phi^('*)_j (y) \ + 2 sum^N_(i = 1) sum^N_(j = 1) f^*_i a_j phi^(*2)_i (x) phi^(*2)_j (y) ] d x d y -> e x t r $

Где $f_i^*$ -- результат разложения по этому базису заданной функции $f(x,y)$. Поскольку функция задана, то мы знаем ее коэфициенты $f_i^*$ разложения по базису.

$ f(x,y) = sum^infinity_(i = 1) f_i^* phi_i^*(x) phi_j^*(y) $

Давайте вынесем суммы и коэфициенты за интегралы:

$  sum^N_(i = 1) sum^N_(j = 1) a_i a_j integral^1_0 integral^1_0 phi^(' *)_i (x) phi^('*)_j (x) phi^*_i (y) phi^*_j (y)d x d y \ + sum^N_(i = 1) sum^N_(j = 1) a_i a_j integral^1_0 integral^1_0 phi^*_i (x) phi^*_j (x) phi^('*)_i (y) phi^('*)_j (y) d x d y \ + 2 sum^N_(i = 1) sum^N_(j = 1) f^*_i a_j integral^1_0 integral^1_0 phi^(*2)_i (x) phi^(*2)_j (y) d x d y -> e x t r $

Это выражение мы хотим отправить в экстремум. 
Разделим $d x$ и $d y$:

$ sum^N_(i = 1) sum^N_(j = 1) a_i a_j integral^1_0 phi^(' *)_i (x) phi^('*)_j (x) d x integral^1_0 phi^*_i (y) phi^*_j (y) d y \ + sum^N_(i = 1) sum^N_(j = 1) a_i a_j integral^1_0 phi^*_i (x) phi^*_j (x) d x integral^1_0 phi^('*)_i (y) phi^('*)_j (y) d y \ + 2 sum^N_(i = 1) sum^N_(j = 1) f^*_i a_j integral^1_0 phi^(*2)_i (x) d x integral^1_0 phi^(*2)_j (y) d y -> e x t r $

Мы не знаем функцию $u(x,y)$, так что не знаем коэфициенты, однако сам базис мы знаем. Значит мы имеем определенные интегралы от известных функций.

Давайте обозначим часть с производными как $b^*_(i j)$, часть без производных как $c^*_(i j)$, двойную часть как $- d^*_(i j)$

$ 2sum^N_(i = 1) sum^N_(j = 1) [a_i a _j b^*_(i j) c^*_(i j) + f^*_i a_j d^*_(i j) ] -> e x t r $

Таким образом мы решение сложной задачи отыскания функции, достигающей экстремума данной вариационной задачи, свели к решению более простой задачи отыскания экстремума функции конечного числа переменных $a_i, a_j$. 

Более того в нашем конкретном случае поскольку задача является линейной (постановка представляет собой квадратичный функционал), то если мы сформулируем необходимое условие экстремума такой задачи (найдем частные производные $(partial s)/(partial a_i)$ и приравняем к нулю), то мы получим систему линейных алгебраических уравнений вида 

$ sum^N_(j = 1) b^*_(i j) c^*_(i j) a_j = - f^*_i d^*_(i j), " " i = overline((1, N)) $

Замечание: в линейном случае квадратичного функционала мы получили систему алгебраических уравнений. В нелинейном случае, когда функционал вариационной постановки будет содержать кубические и более сложные члены, члены более высокого порядка, то мы все равно, используя метод Ритза, придем к системе алгебраических или транцендентных уравнений, но для ее решения придется применять методы численных решений алгебраических или транцендентных уравнений, например метод Ньютона.

Недостатки метода: при решении реальных задач для того чтобы достигнуть некого разумного уровня точности, мы должны удерживать весьма большие $N$. Что приводит к серьезным вычислительным затратам.
//уравнение хокшлиха хаксли

Но это не главное. Главное то, что если мы ставим перед собой задачу не просто решения уравнения, данного своей вариационной постановкой, но отыскание всех решений, проведение полного бифуркационного анализа в полном его варианте. Метод хорош, но обладает двумя недостатками: мы удерживаем дикое количество слагаемых и данный метод не дает возможности бифуркационного анализа. 

Официальная причина того, почему мы должны удерживать $N$ большого порядка связано с тем, что мы, как бы, навязываем базис нашей системе. Ведь до решения такой системы мы не знаем, как выглядит функция $u(x,y)$. Мы представляем ее в виде суммы вполне конкретных функций. Со стороны теории мы можем представить любую функцию, допустим, в виде ряда Фурье. Но на практике нам приходится удерживать большое количество слагаемых, чтобы этого добиться. 

Что делать с большим размером $N?$ Метод носит название метода Кантаровича. Он предложил следующее:

$ u(x,y) = sum^(N)_(i = 1) a_i dot phi_i (x) dot phi^*_i (y) $

Можно сделать наоборот. Мы будем раскладывать неизвестную нам функцию в ряд по одной координате, а вторую мы будем считать по прежнему неизвестной. Мы подставляем это выражение в наш фукнционал. В результате в представлении метода Кантаровича мы получаем функционал, зависящий от функции $phi_i (x)$, то есть от функции одной переменной. Вариация по этим функциям даст нам систему ОДУ, относительно системы $N$ функций от $phi_i (x)$, точнее краевую задачу для этой системы ОДУ. Как решать такого рода задачу мы уже знаем. Метод сведения нелинейной краевой задачи к эквивалентной задачи Коши, использующий итерационную формулу метода Ньютона. Более того, эти методы настолько сочетаются, что часто называют методом Ньютона-Кантаровича. Такое представление, представление метода Кантаровича, дает нам сильный результат:

Если вариация функции вдоль направления $y$, а точнее, вдоль тех направлений, где мы задаем функцию, где мы ставим $*,$ невелика, то мы действительно можем ограничиться незначительном числом $N.$

// самолет -- Кантарович с N = 2, можно было обойтись и одной
// В чистой математике ставим бесконечность, в инженерии 2. 

Второе, более важное свойство, заключалось в том, что, раз мы получаем метод Ньютона, то мы сразу получаем всю теорию бифуркационного анализа, теорема Келлера-Антмана в чистом виде, но результат сильно зависит от $N$. Можно проверить $N$ в каком-то разумном диапазоне.

Недостатки тоже очевидны. Никто не говорил, что искомое решение будет мало изменяться вдоль $y,$ точнее вдоль координаты, где мы ставим звездочку. Если это не выполняется, то так же, как и в методе Фурье, методе Ритза, нужно держать много переменных. Кроме того базовое требование бифуркационного анализа не выполняется, если взять #box([$N+1$]), получим другую бифуркационную картинку. Хотя кажется, что мы пренебрегли очень малыми слагаемыми (с конца ряда), но введение малых параметров часто приводит к качественному изменению бифуркационной картины. Метод Кантаровича является сильным шагом к решению сформулированной задачи построения бифуркационной задачи, однако недостаточным. 

$ u(x,y) = sum^(N)_(i = 1) a_i dot phi_i (x) dot phi_i (y) $

Это следующий шаг развития метода, сказать, что обе функции неизвестны.