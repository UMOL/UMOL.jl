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

spacing:Any
    spacing between two neighboring grid points

count:Any
    number of grid points

msg="":AbstractString
    optional test message 
"""
function test_build_lipid_grid(input_file::AbstractString, 
    output_file::AbstractString, pdb_style::DataType,
    grid_style::DataType,
    direction::Array, spacing, count,
    msg::AbstractString="")
    print_dashed_line(80)
    print_with_color(:blue, "Test build lipid grids\n\n")
    if msg != ""
        print_with_color(:blue, "$msg\n\n")
    end
    @time system = obtain(MolecularPDB.read(pdb_style, input_file), :molecular_system)
    @time new_system = fuse(MolecularSystem, build(grid_style, system; direction=direction, spacing=spacing, count=count))
    @time save(pdb_style, output_file, PDB(molecular_system=new_system))
    
    print_with_color(:green, "VERIFIED! build lipid grid\n\n")
    print_dashed_line(80)
    return true
end

# include("unit_test_1_build_lipid_grid.jl")
include("unit_test_2_build_lipid_grid.jl")
# include("unit_test_3_build_lipid_grid.jl")
# include("unit_test_4_build_lipid_grid.jl")
