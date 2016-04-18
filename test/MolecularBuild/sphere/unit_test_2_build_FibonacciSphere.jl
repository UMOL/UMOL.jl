test_build_lipid_sphere(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"sphere_2.pdb"),
    MolecularPDB.VMD,
    FibonacciSphere,
    75.,
    500,
    "inverted sphere";
    inverted=true
    )
