# KiCAD схемы

Чтобы добавить Arduino Pro Mini, нужно вот эти два pull request'а к себе сохранить:

- https://github.com/KiCad/kicad-footprints/pull/1690/files -> C:\Program Files\KiCad\share\kicad\modules
- https://github.com/KiCad/kicad-symbols/pull/2028/files -> C:\Program Files\KiCad\share\kicad\library


https://docs.kicad-pcb.org/5.1.5/en/getting_started_in_kicad/getting_started_in_kicad.html


## Настройка отображения питания

https://electronics.stackexchange.com/a/438109


ref: https://electronics.stackexchange.com/a/417989

You tell KiCad where the power comes from by using the so called PWR_FLAG symbol.

The PWR_FLAG symbol has only one purpose. It tells KiCad that the net it is connected to has a power supply on it. Connect it as near as possible to the point where you connect power to the board to make it as useful as possible for finding problems in your schematic. (Directly at the connector that will be used to supply power.) If you have passive components in series between a power supply and the power consumer then you need to place another flag after that passive component. (Example if you have a fuse, the inductor of a filter, ...)

The PWR_FLAG symbol does not replace normal power symbols. Normal power symbols are global labels, the PWR_FLAG symbol does not add a label to the net!

Alternatively you create project specific symbols for the connectors that supply your board. (give the pins the electrical type "power output")

More details:

    https://forum.kicad.info/t/errtype-3-pin-connected-to-some-others-pins-but-no-pin-to-drive-it/10946/
    KiCAD 5 --- what is the significance of the various GND symbols?
    https://forum.kicad.info/t/electrical-type-of-schematic-symbol-pins/9439
