"""
Test building a grid of lipids.

Arguments
----------
pdb_file:AbstractString
    path to the PDB file containing a lipid molecule

pdb_style:Symbol
    PDB format style 
"""
function test_build_lipid_grid(pdb_file::AbstractString, pdb_style::Symbol)
    lipid = MolecluarPDB.read(pdb_file, pdb_style)
end

