## Подключение MOSFET к Ардуино

ref: http://www.radioradar.net/articles/scientific_technical/mosfet_connecting_arduino.html

Резистор 3к на затворе – это ограничитель (подстроечное сопротивление). А 10к – это своего рода предохранитель от перехода мосфета в Z-режим (исключается эффект "дребезжания" на малых токах управления).

Если нагрузка обладает большой индуктивностью (актуально, например, для двигателей), то следует использовать дополнительный диод (несмотря на то, что в большинстве мосфетов он уже встроен, не помещает дополнительная защита).

> Как рассчитать потери мощности на мосфете?
> Для этого понадобится сопроводительная документация (даташит) к выбранному полевому транзистору. 
> Здесь стоит отметить, что подбирать мосфет необходимо из серий, помеченных как "Logic Level", они разрабатываются специально для работы с микроконтроллерами.


ref: http://skproj.ru/podklyuchenie-mosfet-k-arduino/

полуоткрытый мосфет имеет некислое внутреннее сопротивление и греется как утюг.

Но тут есть нюанс в выборе резюков. Тот, который между ардуино и gate – чем больше сопротивление, тем меньше ток на ноге ардуино и меньше вероятность что она задымится. И чем больше сопротивление тем медленнее открывается мосфет. Кароч 150 ом норм для ардуино (по закону ома I = U / R, I = 5 / 150 = 0.033 А  — это 33 миллиампера, норм). Зачем он вообще нужен? Дело в том, что затвор (gate) у полевика имеет определенную емкость и является в какой-то мере конденсатором. Так что в момент переключения через затвор проходят большие токи, которые может не выдержать ардуина. Для этого и нужен резистор между gate и пином.

А второй 10 кОм типа подтягивающий резистор – нужен чтобы держать мосфет закрытым и нагрузку выключенной пока порт ардуины в неопределенном состоянии например при загрузке (так называемое Z-состояние).

Но у этой схемы есть косяк – она медленновата...


ref: https://www.electrical4u.com/mosfet-characteristics/

In general, any MOSFET is seen to exhibit three operating regions viz.,

1. Cut-Off Region
Cut-off region is a region in which the MOSFET will be OFF as there will be no current flow through it. In this region, MOSFET behaves like an open switch and is thus used when they are required to function as electronic switches.

2. Ohmic or Linear Region
Ohmic or linear region is a region where in the current IDS increases with an increase in the value of VDS. When MOSFETs are made to operate in this region, they can be used as amplifiers.

3. Saturation Region
In saturation region, the MOSFETs have their IDS constant inspite of an increase in VDS and occurs once VDS exceeds the value of pinch-off voltage VP. Under this condition, the device will act like a closed switch through which a saturated value of IDS flows. As a result, this operating region is chosen whenever MOSFETs are required to perform switching operations.


ref: https://hubstub.ru/circuit-design/89-kak-vybrat-mosfet.html


ref: http://arduino.ru/forum/apparatnye-voprosy/problema-podbora-mosfet-tranzistora

> 2) Правильно ли я понимаю, что для моей цели (открытие открытие транзистора с Arduino) подойдет любой транзистор с Gate threshold voltage <5?
> не совсем. Надо смотреть графики открытия. мосфет может открытья от 5 вольт, но не полностью, тогда его сопротивление будет в разы больше номинального, соотвественно и выделяемая на нем мощность тоже в разы больше необходимой. Обратите внимания на мосфеты с логическим уровнем, у IR они в первых буквах имеют букву L и в даташите явно указано "logic level"


ref: https://www.edaboard.com/showthread.php?272028-MOSFET-gate-current-calculation

MOSFET has a very high input impedance because the gate is isolated by the oxide, therefore the input current in the gate is assumed to be zero except for the leakage current which is small. it is right when you connect 8 transistors in parallel it will have more considerable value but still you have to think that the control of the MOS transistor is by voltage (Voltage controlled current device) not by current.
it mean you have to calculate the needed gate voltage not the current


ref: https://forum.arduino.cc/index.php?topic=492647.15

Do you mean a resistor between pin output and the gate?
That is a nonsense. Mosfet gate resistor has none influence on the drain-source current.
The gate resistor should be something like few hundred ohms to limit the inrush gate's capacitive current.

...

The mosfet is NOT current driven device. It is voltage driven device. The input resistance of the mosfet is hundreds or thousands of megaohms.
In static operation (no switching), NO current flows into the gate.
So no resistor is needed.
If the output voltage of 555 is 10V there will be 10V at the mosfet's gate for any reasonable resistor wired in between (ie. 1k or 10k, or 100k, or 1000k, or 10mega) in static operation.

Mind the threshold voltage of power mosfets could be 0.5 - 10V. No input current in static operation.

## Мои выводы

В линейном режиме сопротивление вычисляется как `R = V_DS / I_D`. 
Оно достаточно высокое и вычисляя мощность как `P = I^2 R` получаем высокие значения при высоких токах. 
Таким образом транзистор перегревается. 

В насыщенном режиме (saturated, плато на графике) при больших V_DS и токах менее I_D эта мощность мала, так как там сопротивление становится равно `R_DS(on)`.

I_D должно быть меньше, чем в даташите (меньше линии на графике, раза в 1.5-2)!

### Расчёт резисторов

Резистор на затворе R_G нужен только чтобы ограничить ток разрядки/зарядки ёмкости затвора. Когда мосфет полностью открыт или закрыт, ток при малых частотах (десятки Герц) практически равен 0, а значит падения напряжения на R_G фактически не будет. По этой причине, нам нужно расчитать этот резитстор по закону Ома для предельных значений тока и напряжения.

В случае Ардуино напряжение не может быть больше 5V, максимальное значение тока на пине мы знаем. Подставив данные значения, при неизменном напряжении и сопротивлении, мы будем иметь ситуацию, когда для повышения тока нужны меньшие значения сопротивления. Следовательно, мы гарантируем, что резистор не пропустит больше тока, чем мы рассчитываем (так как напряжение точно не станет больше).

В случае Arduino Pro Mini 5V (max current on pin - 40 mA) имеем

```
R = U / I = 5V / 0.04A = 125 Ohm
```

Это минимальное значение резистора, который ограничит ток на пине Ардуино. Ближайший номинал возьмём **120 Ом**. Вообще можно взять и 100 Ом, как сказано в этой статье (http://becomingmaker.com/arduino-pwm-mosfet-gate-resistor/), потому что внутренее сопротивление пинов равно 25 Ом, но мы не будем рисковать и немного обезопасимся.

Стягивающий резистор нужен, чтобы держать транзистор в закрытом состоянии, когда пин не подаёт напряжение. То есть он притягивает затвор к земле. Этот резистор должен быть хотя бы на пару порядков больше, чем резистор на затворе R_G, чтобы не делить напряжение (MOSFET'ы управляются в первую очередь напряжением!), которое попадает на MOSFET.