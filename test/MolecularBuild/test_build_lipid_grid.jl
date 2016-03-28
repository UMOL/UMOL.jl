"""
Test building a grid of lipids.

Arguments
----------
input_file:AbstractString
    path to the PDB file containing a lipid molecule

output_file:AbstractString
    path to the output PDB file 

pdb_style:DataType
    PDB format style 

grid_style:DataType
    style of the grid

direction:Array 
    direction array 

spacing:Number
    spacing between two neighboring grid points

count:Integer
    number of grid points
"""
function test_build_lipid_grid(input_file::AbstractString, 
    output_file::AbstractString, pdb_style::DataType,
    grid_style::DataType,
    direction::Array, spacing::Number, count::Integer)
    system = obtain(MolecularPDB.read(pdb_style, input_file), :molecular_system)
    new_system = fuse(MolecularSystem, build(grid_style, system; direction=direction, spacing=spacing, count=count))
    save(pdb_style, output_file, PDB(molecular_system=new_system))
end

test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new.pdb"),
    MolecularPDB.VMD,
    Grid1D,
    [1., 0., 0],
    10.,
    2
    )

