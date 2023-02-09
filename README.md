# efficient-fibonacci

Tried to implement efficient Fibonacci sequence using only multiplication by Golden ratio.

With that, it gives proper results up to `79` first Fibonacci numbers.

You can test this with next command:

```bash
julia test.jl
```

## Usage

- as module

  ```julia
  include("main.jl")
  using .EfficientFibonacci
  ```

- as CLI

  ```bash
  julia main.jl
  ```
  Example output:

  ```text
  How many Fibonacci numbers to print? [20] 35

  0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887
  ```

Fibonacci numbers from `first10.txt` and `first100.txt` was generated at [Generate Fibonacci Numbers - Online Math Tools](https://onlinemathtools.com/generate-fibonacci-numbers)