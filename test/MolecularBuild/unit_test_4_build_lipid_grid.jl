test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"new_3d.pdb"),
    MolecularPDB.VMD,
    Grid,
    Array[[1., 0., 0],[0., 1., 0], [0., 0., 1.]],
    (5., 5., 20.),
    (20, 20, 10),
    "3D grid"
    )
