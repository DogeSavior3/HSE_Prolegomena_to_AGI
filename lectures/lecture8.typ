= Лекция 8. Решение ОДУ. Теория бифуркаций.

Обыкновенные дифференциальные уравнения. Естественным продолжением, и более того, причиной появления того, что называется интегрально-дифференциальное исчисление (математический анализ) является необходимость решения задач, которые описываются обыкновенными дифференциальными уравнениями или уравнениями в частных производных.

Формально, обыкновенные дифференциальные уравнения -- это уравнения, которые зависят от неизвестной функции и какого-то числа ее производных. 

$ F(y(x), y'(x), dots, y^((n))(x)) = 0 $

Решением обыкновенного дифференциального уравнения являтеся $f(y(x))$

Замечание: по отношению к обыкновенному дифференциальному уравнению мы можем ставить два типа задач:

1) Задача Коши(Cauchy) : предполагает, что все дополнительные условия сосредоточены в одной точке. 

$ cases(
  y(x_0) = y_0,
  y'(x_0) = y'_0,
  dots, 
  y^((n))(x_0) = y^((n))_0
) $
Где $y_0, y'_0, dots, y^((n))_0 -$ это конкретные числа. 

2) Краевая задача : дополнительные условия сосредоточены в нескольких точках. (Простейший пример: двухточечная краевая задача)

$ cases(
  y(x_0) = y_0,
  y'(x_0) = y'_0,
  dots, 
  y^((k))(x_0) = y^((k))_0,
  y^((k + 1))(x_1) = y^((k + 1))_0,
  dots, 
  y^((n))(x_1) = y^((n))_0
) $


Обычно для начальной задачи $x_0$ совпадает с левым краем области определения функции $y(x)$, с его началом. Отсюда название начальная задача. Мы знаем что-то в некий начальный момент времени. И хотим понять, как оно развивалось дальше.
Это не является догмой. Формальное определение -- условие сосредоточено в одной точке.

#pagebreak()

В случае краевой задачи $x_0$ совпадает с левым краем промежутка определения $y(x), $ с его началом, а $x_1$ совпадает с концом, правым краем, отсюда название -- краевая задача. Это тоже не является догмой. Кроме того, в краевой задаче может быть больше точек и больше условий, могут быть более сложные условия. 

Пример: 

Простейшим и очевидным демографическим законом является то, что число рожденных (в некоторый промежуток) детей пропорционально числу живущих в данной стране людей. Столь же очевидно, что число умерших людей будет пропорционально той же величине, числу живущих в данной стране людей.

Давайте обозначим через $y(t)$ число людей, популяцию, в момент времени $t.$ И попытаемся вывести демографическое уравнение, то есть, получить ответ на вопрос, как будет меняться количество людей с течением времени.

За некий период времени $Delta t$ изменение количества людей $Delta y$ равно:

$ Delta y = y(t + Delta t) - y(t) = [K_p dot y(t) - K_y dot y(t)] Delta t $

$ (y(t + Delta t) - y(t))/(Delta t) = (K_p - K_y) y(t) $

Пусть $K = K_p - K_y$. Применим к обоим частям операцию предельного перехода:

$ lim_(Delta t -> 0) (y(t + Delta t) - y(t))/(Delta t) = lim_(Delta t -> 0) K y(t) $

$ accent(y, dot)(t) = K y(t) $

$K_p -$ коэфициент рождаемости, $K_y - $ коэффициент смертности, $accent(y, dot) -$ производная по времени. Получили обыкновенное дифференциальное уравнение.

Кроме того, к этому ОДУ мы можем сформулировать задачу Коши:

$ y(t_0) = y_0 $

В некий момент $t_0$ число людей в стране -- $y_0$.

Одними и теми же уравнениями мы можем описывать принципиально разные процессы. Пусть $y(t)$ -- не население страны, а масса радиактивного вещества. Тогда можем применить теорему полураспада -- объем распадающегося радиактивного вещества пропорционален объему радиактивного вещества. Получаем то же самое уравнение без $K_p$, так как ничего не пребывает, только убывает.

//Замечание: задачник Филлипова по дифференциальным уравнениям 

#pagebreak()

Решим полученное уравнение коэфициента рождаемости:

$ (d y)/(d t) = K y "  " => "  " (d y)/y = K d t $

Применим к обеим частям равенства операцию интегрирования.

$ integral (d y)/y = integral K d t $

$ ln |y(t)| + C_1 = K t + C_2 $

Мы имеем две неопределенные константы, можем сказать, что $C = C_2 - C_1$.

$C' = e^C$. Пропотенциируем данное выражение:

$ y(t) = e^(K t) dot C' $

$ y(0) = C' = y_0 $

$ y(t) = y_0 dot e^(K t) $

Получили решение задачи Коши для данной системы.

Давайте предположим, что $K_y > K_p$. Это означает, что $(K_p - K_y) < 0$. Тогда если устремим $t$ к бесконечности, то $y(t) -> 0$. Если демографический коэфициент меньше нуля, то население страны вымрет. Экспонента -- очень быстро убывающая функция. Так что население вымрет очень быстро. 

// Посмотрите динамику населения прибалтийских государств за последние 30 лет. не очень политкорректно, но по сути они Вымираты. 

С другой стороны, если $K_y < K_p$, то при $t -> infinity$ $y(t) -> infinity$. Эта скорость даст очень быстрый прирост населения. 

//Посмотрите динамику населения Нигерии.
//Посмотрите доклад Римскому клубу про демографию Сергея Петровича Капица "рост населения земли"
// население земли носит сверх экспоненциальный характер
//Люди растут экспоненциально, а вот производимый продукт (еда) нет
// именно тогда великобритания начала колониальную политику. 
// фазовый переход -- способность системы перейти к принципиально другому способу управления. например переход от аграрной системы к индустриальному
// Фазовый переход -- Сталин принял страну с сохой, отдал с атомной бомбой, но процентов 10% людей погибло
// Тот же процент в великобритании -- Елизавета первая в англии. Расцвет в замен 30% населения великобритании
// фазовый переход в терминах математики -- бифуркация. 

В силу замкнутости, например, земного шара, к бесконечности такая величина стремиться не может. Это не значит, что решение неверное, но это лишь часть правды. Допустим, мы не знаем точную функцию, по которой меняется население (или другая величина).

$ Delta y = y(t + Delta t) - y(t) = underbrace(f(y(t)), "неизвестная функция") Delta t $

Разложим по Тейлору:

$ y(t + Delta t) - y(t) = f(y(t)) Delta t = [underbrace(f(0), 0) + underbrace(f'(0), k) y(t) + underbrace((f''(0))/2, -k_2) (y(t) - underbrace(y(0), 0))^2 ] Delta t $

Что касается второй производной, было эмперически доказано, что эта величина отрицательна. Тогда применим предельный переход:

$ lim_(Delta t -> 0) (y(t + Delta t) - y(t))/(Delta t) = lim_(Delta t -> 0) [k y - k_2 y^2] $

$ cases(
  accent(y, dot)(t) = k y(t) - k_2 y^2,
y(0) = y_0
) $

$ (d y)/(k y - k_2 y^2) = d t $

Применяем интегрирование:

$ integral (d y)/(k y - k_2 y^2) = integral d t = t + C $

$ integral (d y)/(y(k - k_2 y)) = integral [A/y + B/(k - k_2 y)] d y $

Получим арктангенс, который даст нам следующую картину:

#image("../images/lecture_8_images/picture1.png", width: 50%)

Что еще важно: у ОДУ кроме обычных решений существуют еще так называемые "особые решения", которые, несмотря на их тривиальность, дают очень много для понимания поведения реальной системы, которая описывается ОДУ. Одним из типов особых решений для уравнения вида:

$ accent(y, dot) = f(y) $

Это решение вида (точечное решение):

$ y(t) = y_0 = "const", y_0: f(y) = 0 $

Константа $y_0$ должна согласовываться с начальным условием. Почему $y(t) $ равно константе будет решением? Подставим такое решение в наше дифференциальное уравнение, тогда левая часть обратится в ноль, так как производная константы равна нулю, а правая часть обнулиться так как мы искали $y_0$ таким образом, чтобы $f(y) = 0$. Начальные условия так же выполнены. 

Какие же типы особых решений есть у наших демографических уравнений? 

$ accent(y, dot) = k y = 0 => y(t) equiv 0 $

Если людей не было, то они и не появятся.

Тогда кроме нашего арктангенса получаем еще два решения, на самом деле это верхняя и нижняя граница нашего арктангенса. Если мы рассмотрим другие решения при $t -> infinity,$ мы заметим, что при $K < 0$ все наши решения будут стремиться к тривиальному решению, то есть к нулю. А если $K > 0$, они будут уходить от этого решения.

Какие особые решения есть у более сложного уравнения, полученного через Тейлора? 

$ accent(y, dot)(t) = k y(t) - k_2 y^2 = 0 => y equiv 0 ; y(t) equiv k/k_2 $

Если людей мало, то рост населения экспоненциальный. Та простая модель была верной, но только на определенном промежутке.

#image("../images/lecture_8_images/picture2.jpeg", width: 60%)

Когда число людей превышает определенный порог, то число людей выходит на определенное плато (а именно $k/k_2$ -- емкость системы, в данном случае система на определенной стадии развития может прокормить определенное количество людей). Это называется порог системы. Переход от экспоненциального роста к плато называется предельным переходом. Предел роста. У каждой системы есть такой предел.

// Первый доклад Римскому кругу назывался "Пределы роста" 
// Никитский клуб. Предел роста земли около 11 млрд, с ростом информационного развития будет около 5
// Чем интересны пределы роста? чтобы не начался век голода и убийств
Когда мы пробиваем предел, система какими-то жесткими механизмами возвращают состояние системы на наше плато. Психологически сложно осознать, что система достигла своего предела и нужно что-то менять. 

Замечание: ОДУ делятся на линейные и нелинейные. В линейных правая часть зависит от неизвестной функции и ее производных линейно, во втором случае она зависит нелинейно. Это порождает два лагеря математиков. 

Простота линейных в том, что они решаются простой формулой. Для нелинейных таковой нет. Бельгийский ученый (Илья Пригожин) сформулировал гипотезу: мир нелинеен, темпорален, случаен. Линейные уравнения -- лишь приближение к нелинейным в некоторой узкой области параметров.

//иисак ньютон подводя итог своей жизни написал зашифрованную анаграмму, которая звучит таким образом "полезно изучать дифференциальные уравнения"

