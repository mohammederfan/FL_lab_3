# Lab 3 – Arithmetic Expression Parser using Bison and Flex

This lab implements a simple calculator that supports:

- Addition (`+`)
- Subtraction (`-`)
- Multiplication (`*`)
- Division (`/`) with zero-division protection
- Power (`^`)

## How to Build

```bash
make
```

## How to Run

```bash
./calc < test/expressions.txt
```

## Example Input

```
3 + 4
5 - 2
2 ^ 3
10 / 0
```

## Example Output

```
= 7
= 3
= 8
= 0
```
