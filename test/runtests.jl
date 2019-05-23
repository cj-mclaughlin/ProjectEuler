using Test, ProjectEuler
# include("C:/Users/Connor/github/ProjectEuler/src/p01.jl") # note - need "" vs ''
# include("C:/Users/Connor/github/ProjectEuler/src/p02.jl")
# include("C:/Users/Connor/github/ProjectEuler/src/p03.jl")
# include("C:/Users/Connor/github/ProjectEuler/src/p04.jl")
# include("C:/Users/Connor/github/ProjectEuler/src/p05.jl")


# sanity check
@test 1 == 1

@testset "first five problems" begin
    @test p1_fast() == 233168
    @test p2() == 4613732
    @test p3(600851475143) == 6857
    @test p4() == 906609
    @test p5(1, 20) == 232792560
end
