
test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new_1d.pdb"),
    MolecularPDB.VMD,
    Grid1D,
    [1., 0., 0],
    10.,
    2,
    "1D grid"
    )
