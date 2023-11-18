---
## Front matter
title: "Отчёт по лабораторной работе 8"
subtitle: "Программирование цикла. Обработка аргументов командной строки."
author: "Субанов Юсуф Жура угли	НПМбв-01-21"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=trueЗырянов Артём Алексеевич	НБИбд-01-22

  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки..

# Выполнение лабораторной работы

1. Создайте каталог для программам лабораторной работы № 8, перейдите в
него и создайте файл lab8-1.asm

2. Введите в файл lab8-1.asm текст программы из листинга 8.1. 
Создайте исполняемый файл и проверьте его работу.

![Файл lab8-1.asm](image/01.png){ #fig:001 width=70%, height=70% }

![Работа программы lab8-1.asm](image/02.png){ #fig:002 width=70%, height=70% }

3. Данный пример показывает, что использование регистра ecx в теле цилка
loop может привести к некорректной работе программы. Измените текст программы добавив изменение значение регистра ecx в цикле:
Создайте исполняемый файл и проверьте его работу. Какие значения принимает регистр ecx в цикле? 
Соответствует ли число проходов цикла значению N, введенному с клавиатуры?

Программа запускает бесконечный цикл при нечетном N и выводит только нечетные числа при четном N.

![Файл lab8-1.asm](image/03.png){ #fig:003 width=70%, height=70% }

![Работа программы lab8-1.asm](image/04.png){ #fig:004 width=70%, height=70% }

4. Для использования регистра ecx в цикле и сохранения корректности работы
программы можно использовать стек. Внесите изменения в текст программы
добавив команды push и pop (добавления в стек и извлечения из стека) для
сохранения значения счетчика цикла loop. Создайте исполняемый файл и проверьте его работу. 
Соответствует ли в данном случае число проходов цикла значению N введенному с клавиатуры?

Программа выводит числа от N-1 до 0, число проходов цикла соответсвует N.

![Файл lab8-1.asm](image/05.png){ #fig:005 width=70%, height=70% }

![Работа программы lab8-1.asm](image/06.png){ #fig:006 width=70%, height=70% }

5. Создайте файл lab9-2.asm в каталоге ~/work/arch-pc/lab08 и введите в него
текст программы из листинга 8.2.
Создайте исполняемый файл и запустите его, указав аргументы.
Сколько аргументов было обработано программой?

Программа обработала 5 аргументов.

![Файл lab8-2.asm](image/07.png){ #fig:007 width=70%, height=70% }

![Работа программы lab8-2.asm](image/08.png){ #fig:008 width=70%, height=70% }

6. Рассмотрим еще один пример программы которая выводит сумму чисел,
которые передаются в программу как аргументы.

![Файл lab8-3.asm](image/09.png){ #fig:009 width=70%, height=70% }

![Работа программы lab8-3.asm](image/10.png){ #fig:010 width=70%, height=70% }

7. Измените текст программы из листинга 8.3 для вычисления произведения
аргументов командной строки.

![Файл lab8-3.asm](image/11.png){ #fig:011 width=70%, height=70% }

![Работа программы lab8-3.asm](image/12.png){ #fig:012 width=70%, height=70% }

8. Напишите программу, которая находит сумму значений функции f(x) для x = x1, x2
, ..., xn, т.е. программа должна выводить значение f(x1) + f(x2)+...+f(xn). Значения x передаются как аргументы. Вид функции f(x)
выбрать из таблицы 8.1 вариантов заданий в соответствии с вариантом, 
полученным при выполнении лабораторной работы № 7. 
Создайте исполняемый файл и проверьте его работу на нескольких наборах x.

для варивнта 1 $f(x) = 2x+15$

![Файл lab8-4.asm](image/13.png){ #fig:013 width=70%, height=70% }

![Работа программы lab8-4.asm](image/14.png){ #fig:014 width=70%, height=70% }

# Выводы

Освоили работы со стеком, циклом и аргументами на ассемблере nasm.
