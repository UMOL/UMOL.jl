using Base.Test
include("test_dir.jl")

using MolecularDataType
using MolecularMove
using MolecularBuild
using MolecularPDB 

include(joinpath("..","src","uMOL.jl"))
using uMOL

include(joinpath("MolecularBuild", "runtests.jl"))