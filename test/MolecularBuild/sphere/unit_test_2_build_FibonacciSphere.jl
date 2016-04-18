test_build_lipid_sphere(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"sphere.pdb"),
    MolecularPDB.VMD,
    FibonacciSphere,
    50.,
    100,
    "1D grid";
    inverted=true
    )
