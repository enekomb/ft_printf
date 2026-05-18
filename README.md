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

---

## Academic Integrity

This repository is shared for **educational and portfolio purposes only**.

**For 42 students:**
- Do not copy this code for your own project submissions
- Use it as a reference to understand concepts and approaches
- Write your own original solution — that is the only way to actually learn

*42's core values are learning through practice, peer collaboration, and genuine problem-solving.*

---

## License

MIT — see [LICENSE](LICENSE) for details.
Copyright (c) 2026 Eneko Muñoz Bordona