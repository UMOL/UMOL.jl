# change the residue ID
# usage: vmd -e change_resid.tcl -args my.pdb number_of_residues output.pdb
# author: Yuhang Wang
# date: 04/08/2016

proc load {pdb_file} {
    return [mol new $pdb_file]
}

proc renumber_resid {mol_id residue_count} {
    for {set i 0} {$i < $residue_count} {incr i} {
        set sel [atomselect $mol_id "residue $i"]
        $sel set resid $i
        $sel delete
    }
}

proc save {mol_id output} {
    puts "write $output ..."
    animate write pdb $output $mol_id
}

proc main {argv} {
    set pdb_file [lindex $argv 0]
    set residue_count [lindex $argv 1]
    set output [lindex $argv 2]
    puts "output $output"
    set mol_id [load $pdb_file]
    renumber_resid $mol_id $residue_count
    save $mol_id $output
}

main $argv
exit