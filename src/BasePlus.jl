module BasePlus

function nrow(M::AbstractMatrix)
    size(M, 1)
end

function ncol(M::AbstractMatrix)
    size(M, 2)
end

function isnothing(x)
    x == nothing
end

#=
function assign(x)
    a
end

function get(x::AbstractString)
    eval(Meta.parse(x))
end
=#

end # module
