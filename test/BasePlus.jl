module TestBasePlus

using Test, BasePlus

@testset "isnothing" begin
    @test isnothing(nothing) == true
    @test isnothing(1) == false
    @test isnothing("A") == false
end

@testset "col/row counts" begin
    M = rand(5, 2)
    @test nrow(M) == 5
    @test ncol(M) == 2
    @test_throws MethodError nrow(1)
    @test_throws MethodError nrow("A")
    @test_throws MethodError ncol(1)
    @test_throws MethodError ncol("A")
end

end # module
