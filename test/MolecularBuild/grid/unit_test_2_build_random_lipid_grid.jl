test_build_random_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"10x10x10_random_popc.pdb"),
    MolecularPDB.VMD,
    RandomGrid3D,
    Array[[1., 0., 0],[0., 1., 0], [0., 0., 1.]],
    (20., 20., 20.),
    (10, 10, 10),
    "3D grid",
    3.
    )
