test_build_random_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new_3d_random_popc.pdb"),
    MolecularPDB.VMD,
    RandomGrid3D,
    Array[[1., 0., 0],[0., 1., 0], [0., 0., 1.]],
    (20., 20., 20.),
    (3, 3, 3),
    "3D grid",
    3.
    )
