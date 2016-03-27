if !isdefined(:MolecularPDB)
    include(joinpath("..","pkg","MolecularPDB","src","MolecularPDB.jl"))
end

if !isdefined(:MolecularDataType)
    include(joinpath("..","pkg","MolecularDataType","src","MolecularDataType.jl"))
end

if !isdefined(:MolecularMove)
    include(joinpath("..","pkg","MolecularMove","src","MolecularMove.jl"))
end

if !isdefined(:MolecularBuild)
    include(joinpath("..","pkg","MolecularBuild","src","MolecularBuild.jl"))
end
