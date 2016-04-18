test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"sphere.pdb"),
    MolecularPDB.VMD,
    FibonacciSphere,
    50.,
    10,
    "1D grid"
    )
