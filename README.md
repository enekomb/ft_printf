# ft_printf — Custom printf Implementation in C

> 42 Urduliz — Common Core project

A reimplementation of the C standard library `printf` function, handling the most common format specifiers.

---

## Supported Conversions

| Specifier | Output |
|---|---|
| `%c` | Single character |
| `%s` | String |
| `%p` | Pointer address (hex) |
| `%d` / `%i` | Signed decimal integer |
| `%u` | Unsigned decimal integer |
| `%x` / `%X` | Hexadecimal (lower/upper) |
| `%%` | Literal percent sign |

## Build & Use

```bash
make
# Links as a static library: libftprintf.a
```

Include in your project:
```c
#include "printflib.h"
ft_printf("Hello %s, you are %d years old\n", name, age);
```

## Implementation

Uses **variadic functions** (`va_list`, `va_arg`) to handle variable argument lists. Each format specifier is dispatched to a dedicated handler function.

## Skills

`C` `Variadic Functions` `String Formatting` `Static Library` `Makefile`
