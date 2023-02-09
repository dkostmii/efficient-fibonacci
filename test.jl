using Test
include("main.jl")
using .EfficientFibonacci

maxPrecision = 79

open("./first10.txt") do f
  if eof(f)
    throw("File is empty")
  end
  
  s = readline(f)

  expected = s
  actual = firstN(10)

  @test expected == actual

end

open("./first100.txt") do f
  if eof(f)
    throw("File is empty")
  end

  s = readline(f)

  sArr = split(s, " ")[1:maxPrecision]
  firstNArr = split(firstN(maxPrecision, " "), " ")

  for (expected, actual) in zip(sArr, firstNArr)
    @test expected == actual
  end
end