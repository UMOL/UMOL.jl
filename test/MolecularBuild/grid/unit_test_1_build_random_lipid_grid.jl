test_build_random_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new_random_2d.pdb"),
    MolecularPDB.VMD,
    RandomGrid3D,
    Array[[1., 0., 0],[0., 1., 0]],
    (15., 15.),
    (2, 2),
    "2D grid",
    5.
    )
