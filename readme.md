# Adore

Adore is a UI creation system made specifically for my own projects using Lua, it helps create new interfaces from 
scratch and with minimal effort. This is the documentation for how to use it.

## How to use it, Dependencies, and what it's about

### On Bug Reports

This was made using Love2D 11.5 and Lua 5.4.2, During the development phase of this project, I will only accept bug reports from
these versions of Love2D and Lua, neither lower nor higher.

### On Dependencies

Lua and Love2D are required.

### Usage Guide

Place the adore.lua file standalone into the codebase you want to use, and simply type

```Lua
adore = require("path/to/adore")
```

and you are set to use all of the utilities of adore!

## Command Dictionary

Where you can see all of the usable commands currently available in this project.

### adore.drawBox()

```Lua
adore.drawBox(BoxCoordinatesX, BoxCoordinatesY, BoxSize, Colors, Name)
```

This command draws a perfect square with an outline slightly offset in color from the `BoxColors` parameter.

`BoxCoordinatesX` Integer\
`BoxCoordinatesY` Integer\
`BoxSize` Integer\
`Colors` Table, `{Red (Float), Green (Float), Blue (Float)}`, see [the Love2D docs](https://love2d.org/wiki/love.graphics.setColor)\
`Name` String, must be unique for each `adore.drawBox`, however is optional.

### adore.drawRectangle()

```Lua
adore.drawRectangle(RectangleCoordinatesX, RectangleCoordinatesY, RectangleSizeX, RectangleSizeY, Colors, Name)
```

This command draws a rectangle with an outline slightly offset in color from the `Color` paremeter, very similar to the 
aforementioned `adore.drawBox()`.

`RectangleCoordinatesX` Integer\
`RectangleCoordinatesY` Integer\
`RectangleSizeX` Integer\
`RectangleSizeY` Integer\
`Colors` Table, `{Red (Float), Green (Float), Blue (Float)}`, see [the Love2D docs](https://love2d.org/wiki/love.graphics.setColor)\
`Name` String, must be unique for each `adore.drawRectangle`, however is optional

### adore.addObject()

Work in progress