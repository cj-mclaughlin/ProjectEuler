using Test
include("../src/p01.jl")
# attempting to do this elegantly
#push!(LOAD_PATH, "../src/")
#using solution


# sanity check
@test 1 == 1

@testset "first five problems" begin
    @test p1_fast() == 233168
    # @test p2() == 4613732
    # @test p3(600851475143) == 6857
    # @test p4() == 906609
    # @test p5(1, 20) == 232792560
end
