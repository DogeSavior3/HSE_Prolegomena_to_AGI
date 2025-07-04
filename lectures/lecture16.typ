= Лекция 16. Прогнозирование за горизонтом прогнозирования

Для того чтобы преодолеть фундоментальный закон, который не позволяет нам прогнозировать за горизонтом прогнозирования было предложено несколько концепций, которые в совокупности дают необходимый эффект. 

Давайте отметим, что эти концепции сочетаются с любым методом прогнозирования, с любым подходом к прогнозированию, однако излагать их мы будем на основании так называемого прогнозирования на основе кластеризации (Predictive clustering). Подход был предложен в 90-е годы прошлого века и показал свою работоспособность в сравнении со всеми остальными методами, подходами, при прогнозировании хаотических временных рядов на много шагов вперед. Метод базируется на предположении, что для рассматриваемого временного ряда все переходные процессы завершены. И движение происходит в окрестности аттрактора. Поскольку ряд хаотический, то аттрактор странный. 

Что такое переходные процессы? В теории прогнозирования и в теории динамических систем, вообще все наблюдаемые на земле процессы делятся на две категории: переходные и установившиеся. Установившиеся процессы означают, что движение системы протекает в окрестности некоторого аттрактора, не обязательно странного. И соответственно сложность прогноза определяется именно сложностью этого аттрактора как геометрического объекта. Переходные процессы означают, что движение протекает вне окрестности любого аттрактора системы, что система еще не успела притянутся ни к одному из своих аттракторов, что система находится на пути к установившемуся процессу. Или на пути между двумя установившемися процессами. В последнем случае говорят о жесткой бифуркации или о катастрофе системы. Естественно, в реальных системах переходные процессы кратковременны, а установившиеся процессы долговременны. Поэтому разумно принебрегать переходными процессами, что мы и сделаем. Разумно считать, что они завершены и мы движемся в окрестности некоторого аттрактора, в нашем случае странного. 

Если это так, то мы в наших дальнейших рассуждениях можем опереться на теорему Пуанкаре (Poincaré) о возвращении траектории. Теорема гласит следующее: для всякой динамической системы, определеяемой своим потоком $g^T$, и для всякой точки $x$ ее инвариантного множества, существует момент времени $T$, что $g^T (x)$, то есть точка, в которой окажется $x$ через время $T$, принадлежит окрестности точки $x, $ сколь бы мала не была эта окрестность.

$ g^T (x) in U(x) $

#pagebreak()

Соответственно, это означает, что любая траектория любой системы, отвечающая установившемуся процессу, рано или поздно вернется в окрестность самой себя. Пройдет рядом с той точкой, через которую она уже проходила, причем "рядом" может означать любое весьма малое расстояние $epsilon>0$. При этом для регулярных траекторий это обычно совпадение. А для хаотических траекторий доказано прямо противоположное. Траектория никогда дважды не пройдет через ту же самую точку, сколько малой бы не был $epsilon$. Но по теореме Пуанкаре она пройдет через $epsilon-$окрестность точки $x$. При этом время $T$ нам неизвестно, Пуанкаре доказал лишь его существование. В подавляющем большинстве практически значимых случаев, его и рассчитать толком нельзя. 

Например, на ряде Лоренса (стандартный бенчмарк всех моделей прогнозирования хаотических рядов), показано, что $T$ равномерно распределенная случайная величина. Однако это не отменяет самого факта возвращения. 

На этот факт мы и обопремся. 

Что с нашей точки зрения говорин теорема Пуанкаре? Если мы рассмотрим хаотическую систему и установившийся процесс, то любой участок ряда отвечает движению по некоторой области странного аттрактора. 

Если мы от геометрического представления в фазовом пространстве перейдем к динамическому представлению в виде ряда, то мы получаем удивительную вещь: если кусок ряда встречался, то через какое-то $T$ этот кусок повторится (не совсем он, но что-то отличное от него на $epsilon$). 

Вообще говоря, вероятность попадания траектории в один и тот же гиперкубик странного аттрактора равна инвариантной мере динамической системы, о которой мы говорили в прошлый раз. Для одних гиперкубиков эта вероятность больше, для других меньше. С практической точки зрения это означает, что если мы возьмем какой-то кусок (chunk) ряда, то в одних случаях он будет многократно повторяться (с точностью до $epsilon$), а в других случаях он будет повторяться редко, возможно мы вообще не сможем увидеть некоторые куски ряда. Если мы имеем дело с бесконечным рядом, то теорема Пуанкаре гарантирует нам, что мы для каждого кусочка найдем его соответствие. К счастью, мы имеем дело с конечным рядом, то, соответственно, некоторые чанки могут и не повториться. Тем ни менее, для достаточно большого ряда и для достаточно хорошей хаотической динамической системы, мы будем наблюдать повторяемость некоторых кусочков ряда. 

#pagebreak()

Отсюда следует весьма любопытный вывод: если мы разрежем ряд на кусочки, то есть на наши $z$-вектора, то мы можем это множество векторов кластеризировать тем или иным образом, и эта операция кластеризации будет разумной. Кластера будут соответствовать областям странного аттрактора. 

Центройды таких класетров называются мотивами (motifs). Пусть наши $z$-вектора и наши мотивы имеют размерность $l$. Мы рассматрриваем наш временной ряд и в какой-то момент наблюдения прекращены. Мы хотим получить прогноз для следующей точки этого временного ряда. Если мы возьмем участок временного ряда, предшествующий точке завершения наблюдений, длины $l-1$, и сравним его с каждым из мотивов, обрезанных на единичку, то если окажется, что этот наблюдаемый вектор $z^*$ близок к какому-то из обрезанных мотивов: $ rho(z^*, "Trunc" xi_e ) < epsilon $ То, соответственно, мы можем в качестве прогноза выбрать последний элемент этого обрезанного мотива. Среди множества всех существующих мотивов совсем необязательно выбирать один единственный (например, ближайший) мотив. Может оказаться, что на расстоянии, не превышающем $epsilon$, у нас окажется несколько, и даже достаточно много  обрезанных мотивов. Это позволяет нам получить для нашей точки не один прогноз $hat(y)_(t+1)$, но целое множество, которое носит название множества возможных прогнозных значений. Обозначается $hat(S)(y_(t+1))$. Вообще говоря, это неплохой результат по двум причинам:

В теории, где получить даже одно прогнозное значение тяжело, получить целое множество -- вещь хорошая. Хотя множество прогнозных значений может быть пустым. Оно существует, но не факт, что мы их найдем в конченом рядк.

Если у нас есть несколько оценок одной и той же величины, то это всегда хорошо со статистической точки зрения, можно их, например, усреднить, и получить более хорошую в каком-то смысле величину, чем каждая из исходных оценок. 

У этого подхода есть три недостатка:

+ Структура множества прогнозных значений не будет тривиальной, как нам бы хотелось. 

+ Множество $z$-векторов необходимо кластеризировать. Это означает, что мы должны подобрать эффективный алгоритм кластеризации. В зависимости от данных, от структуры, сложности, кластеризируемости данных, мы должны применять различные алгоритмы кластеризации, которых придумано огромное множество.

+ Многомерность данных. 

//книжка aggarwal reddy

Алгоритмов кластеризации существует огромное множество. Откуда такое многообразие? Зачем столько разных алгоритмов? Ответ прост, ни в каком разделе прикладной математики не существует всегда работающего решения. В зависимости от данных, их структуры, сложности, кластеризированности, мы должны применять различные алгоритмы кластеризации. Наша специальность заключается в том, что мы должны понимать, какова структура данных, и какие методы, алгоритмы можно применить к этим данным. У каждой задачи есть множество подходов к решению. Есть постановка задачи, а есть методы решения. Специалист должен жестко разделять постановку задачи, и методы ее решения. И ни для одной задачи не существует идеального решения. Это связано тем, что для данного типа задач, для данного типа данных, для особенностей данной задачи, которые методы оказываются крайне неэффективными, или вовсе нерабочими. 

Что касается задач кластеризации, какие есть проблемы? 

K-means предполагает, что мы знаем количество кластеров. А вот наше пространстве $z$-векторов, допустим, 20-мерное. Можем ли мы, смотря на 20-мерное пространство сказать, сколько там кластеров? Причем даже идея с перебором количества работает плохо. Во-первых, объем данных очень большой, такое просто вычислительно невозможно. Во-вторых, увидеть получившиеся кластера мы не можем, только посчитать какую-то меру кластеризации. И разные меры будут давать разные значения гиперпараметров алгоритма. И понять, где истина, довольно трудно. Было бы неплохо, чтобы число кластеров вычислялось в процессе кластеризации. 

Этот момент важен с дидактической точки зрения. Теорема Пуанкаре гарантирует наличие кластерной структуры, но количество кластеров неизвестно. Наша задача -- сформулировать требования к алгоритму кластеризации и найти подходящий метод. Если готовый алгоритм не удовлетворяет требованиям, придётся разрабатывать собственный. Надеяться на стандартные решения из библиотек без анализа задачи бесполезно. Наша цель — научиться осознанно формулировать требования и подбирать / создавать подходящие алгоритмы.

Когда мы говорим о K-means и про кластера, мы как-то внутренне предполагаем, что кластера -- это какие-то сферообразные кусочки, отделенные в пространстве друг от друга. Но в природе такого не встречается и кластера бывают самые разные. Мало того, что они вряд ли будут линейно разделимы, так еще и могут иметь странные, например вытянутые, формы. Кластером может быть практически что угодно. Кластера могут быть разномерными. 

В любой алгоритм кластеризации неявно заложено представление алгоритма о кластерах. В задачах predictive clustering мы встречаемся с различными кластерами, далеко не шарообразными. Отсюда вытикает следующее требование:

Алгоритм кластеризации должен уметь работать с кластерами разных типов. Он должен быть заточен под весьма большой диапазон различных кластеров. 

В итоге получаем два довольно строгих требования. 
