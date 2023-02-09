module EfficientFibonacci
export firstN

using Base.MathConstants

function firstN(n, sep = " ")
  first = [0, 1, 1, 2]

  initialLength = length(first)

  if n <= initialLength
    return join(string.(first[1:n]), sep)
  end

  for i in 1:(n - initialLength)
    next = round(last(first) * golden)
    push!(first, next)
  end

  return join(string.(first), sep)
end

if abspath(PROGRAM_FILE) == @__FILE__
  print("How many Fibonacci numbers to print? [20] ")
  strN = readline()
  strN = replace(strN, r"(\n|\r\n)" => s"")
  println("")

  canParse = tryparse(Int64, strN) !== nothing
  
  if canParse
    N = parse(Int64, strN)
  else
    N = 20
  end

  print(firstN(N))
end

end

