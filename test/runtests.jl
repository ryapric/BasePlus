using Test
using BasePlus

@testset "isnothing" begin
    @test BasePlus.isnothing(nothing) == true
    @test BasePlus.isnothing(1) == false
    @test BasePlus.isnothing("A") == false
end

@testset "col/row counts" begin
    M = rand(5, 2)
    @test BasePlus.nrow(M) == 5
    @test BasePlus.ncol(M) == 2
    @test_throws MethodError BasePlus.nrow(1)
    @test_throws MethodError BasePlus.nrow("A")
    @test_throws MethodError BasePlus.ncol(1)
    @test_throws MethodError BasePlus.ncol("A")
end
