# Додаток Г. Алгоритми сортування та пошуку
## Методичні вказівки
Алгоритми сортування та пошуку наведено нижче. У наведених алгоритмах масиви упорядковують за зростанням.

## Сортування обміном
Послідовно порівнюється елемент $a_0$ із кожним наступним $a_i$. Якщо $a_i < a_0$, то ці два елементи міняють місцями. Таким чином найменший елемент виявляється на своєму місці на початку масиву. Потім цей метод застосовують до елемента $a_1$ і т.д.

## Шейкер-сортування
У цьому методі проходи масиву виконують по черзі зліва направо, а потім справа наліво. Послідовно порівнюють пари сусідніх елементів ($a_0$ і $a_1$, $a_1$ і $a_2$, і т.д.) і, якщо треба, переставляють місцями. Запам’ятовують індекс останнього елемента, що переставляється (`right`). Далі масив проглядають справа наліво, починаючи з індекса `right`. У цьому проході також виконують порівняння сусідніх елементів і їх перестановлення. Запам’ятовують індекс останнього елемента, що переставляється (`left`). Далі знову виконують прохід зліва направо від індекса `left` до індекса `right`, і т.д.

## Сортування Шелла
Вибирають інтервал $d$ між порівнюваними елементами, і виконують сортування масиву методом «бульбашки», але з кроком $d$. Після етапу сортування масиву з обраним інтервалом інтервал зменшують і знову виконують сортування масиву методом «бульбашки». Рекомендована послідовність значень $d$: $1, 3, 7, 15, 31, \ldots,$ тобто $d_k=\frac{d_{k-1}-1}{2}$.

Максимальне значення $d$ не повинно перевищувати довжину масиву. У цьому алгоритмі на першому проході порівнюють і, якщо треба, переставляють елементи, що далеко стоять, а на останньому проході — сусідні.

## Човникове сортування
Послідовно порівнюють пари сусідніх елементів $a_0$ і $a_1$, $a_1$ і $a_2$, і т.д., і якщо $a_i>a_{i+1}$, то елемент $a_{i+1}$ просувають уліво наскільки можливо. Його порівнюють зі своїм попередником і, якщо він менший від попередника, виконують обмін, і починається чергове порівняння. Коли елемент, який пересувають уліво, зустрічає меншого попередника, то процес пересування вліво припиняється, і поновлюється перегляд масиву зліва направо з позиції, із якої виконувався обмін під час просування зліва направо.

## Швидке сортування (метод Хоара)
Ідея методу полягає в тому, що спочатку переставляють елементи, які знаходяться один від одного на великих відстанях. Вибирають елемент масиву (наприклад, центральний), який розбиває масив на дві підмножини. Нехай значення цього елемента — $x$. Елементи масиву переставляють так, щоб зліва від $x$ знаходилися елементи $a_i\le x$, а праворуч — $a_i\ge x$. Після перестановок елемент $x$ знаходитиметься на своєму місці. Далі алгоритм поділу масиву на ліву й праву частини застосовують до лівої, а потім до правої частин, потім до частин частин, і так доти, доки кожна з частин не складатиметься з єдиного елемента. У цьому сортуванні використовують рекурсію.

Для поділу елементів масиву, починаючи з елемента з індексом `left` до елемента з індексом `right`, відносно «центрального» елемента $x$, уводять два індекси `i = left`, `j = right`. Елементи проглядають зліва направо доти, доки не виявиться елемент , потім масив проглядають справа наліво, поки не виявиться елемент $a_j \le x$. Після цього елементи міняють місцями. Далі процес перегляду й перестановки повторюють доти, доки не стане $i > j$.

### Комбінований метод швидкого сортування з методом «бульбашки»
У цьому методі рекурсивний алгоритм поділу масиву швидкого сортування застосовують тільки до послідовностей масиву, довжина яких не менша за певний розмір $m$($m \le n$, де $n$ — розмірність масиву). Для сортування коротких послідовностей використовують метод «бульбашки».

## Лінійна вставка
Елементи масиву ділять на послідовність уже впорядкованих елементів $a_0, a_1,\ldots,a_{i-1}$ і послідовність ще не впорядкованих елементів $a_i, a_{i+1}, \ldots, a_{n-1}$, де $n$ — розмірність масиву. У кожному проході з невпорядкованої послідовності витягують елемент  (у першому проході $i = 1$) і вставляють в упорядковану послідовність з $i$ елементів без порушення впорядкованості в ній. Цей алгоритм повторюють для $i = 2,3,\ldots,n-1$. Алгоритм вставлення $a_i$ в упорядковану послідовність з $i$ елементів полягає в просуванні вставлюваного елемента в початок послідовності, порівнюючи його з $a_{i-1}, a_{i-2}$ і т.д. Просування закінчують на елементі $a_j \le a_i$ або у випадку проходження всієї послідовності.

## Бінарна вставка
У цьому методі, на відміну від лінійної вставки, для відшукання місця для вставлення елемента $a_i$ в упорядковану послідовність використовують алгоритм *бінарного пошуку*, за якого елемент $a_i$ порівнюють із середнім елементом упорядкованої послідовності, а потім процес ділення навпіл триває доти, доки не буде знайдено точки вставлення.

## Центрована вставка
Алгоритм використовує додатковий робочий масив. У позицію, розташовану в центрі робочого масиву, поміщують елемент $a_0$. Він буде медіаною. Зліва від медіани потрібно розташувати всі елементи, менші від неї, а праворуч — більші чи рівні. Із сортованого масиву послідовно вибирають елемент, порівнюють його з медіаною та вставляють без порушення впорядкованості в ліву чи праву частини масиву. Якщо область пам’яті, виділену для однієї з частин, буде вичерпано, усі елементи робочого масиву зсувають у протилежному напрямку, і значення медіани змінюють. У кінці алгоритму впорядковані елементи повинно бути скопійовано у вихідний масив.

## Метод фон Ноймана
Ідея методу полягає в тому, щоб упорядкувати пари сусідніх елементів масиву ($a_0$ і $a_1$, $a_2$ і $a_3$ і т.д.) і перенести їх у допоміжний масив `b`. Потім потрібно взяти по дві сусідні пари з `b` і, зливши їх в упорядковані четвірки, знову записати в `а`. Потім кожні дві четвірки з `b` злити в упорядковані вісімки й переписати в `а`, і т.д. Упорядкований масив повинен виявитися в масиві `а`.

## Бінарний пошук
Алгоритм застосовують до впорядкованого масиву, у якому потрібно знайти номер елемента з заданим значенням `x`. Спочатку `х` порівнюють із середнім елементом масиву. Якщо збіг знайдено, то повертають індекс середнього елемента, інакше визначають, у якій половині масиву потрібно виконувати пошук, застосовуючи до неї рекурсивно алгоритм бінарного пошуку.

## Інтерполяційний пошук
Алгоритм застосовують до впорядкованого масиву, у якому потрібно знайти номер елемента з заданим значенням `x`. Якщо відомо, що `х` знаходиться між елементами $a_l$ і $a_r$, номер чергового елемента для порівняння обчислюють за формулою $m = 1 + (r-1)\frac{x - a_l}{a_r - a_l}$. Якщо збіг знайдено, то повертають індекс елемента `m`, інакше визначають, у якій частині масиву потрібно виконувати пошук, застосовуючи до неї рекурсивно алгоритм інтерполяційного пошуку.