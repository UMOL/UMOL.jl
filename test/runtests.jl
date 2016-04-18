using Base.Test
include("test_dir.jl")
include("print_dashed_line.jl")

using MolecularDataType
using MolecularMove
using MolecularBuild
using MolecularPDB 

include(joinpath("..","src","uMOL.jl"))
using uMOL

include(joinpath("MolecularBuild", "runtests.jl"))