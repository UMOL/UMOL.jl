if !isdefined(:MolecularPDB)
    include(joinpath("MolecularPDB","src","MolecularPDB.jl"))
end

if !isdefined(:MolecularDataType)
    include(joinpath("MolecularDataType","src","MolecularDataType.jl"))
end

if !isdefined(:MolecularMove)
    include(joinpath("MolecularMove","src","MolecularMove.jl"))
end

if !isdefined(:MolecularBuild)
    include(joinpath("MolecularBuild","src","MolecularBuild.jl"))
end
