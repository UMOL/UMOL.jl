@time test_build_lipid_grid(
    joinpath(test_dir(:data),"lipid","popc.pdb"),
    joinpath(test_dir(:tmp),"20x20x8_popc.pdb"),
    MolecularPDB.VMD,
    Grid,
    Array[[1., 0., 0],[0., 1., 0], [0., 0., 1.]],
    (10., 10., 25.),
    (20, 20, 8),
    "3D grid"
    )
