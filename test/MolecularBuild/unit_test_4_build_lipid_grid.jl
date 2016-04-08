test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new_3d.pdb"),
    MolecularPDB.VMD,
    Grid,
    Array[[1., 0., 0],[0., 1., 0], [0., 0., 1.]],
    (10., 10., 40.),
    (2, 2, 2),
    "3D grid"
    )
