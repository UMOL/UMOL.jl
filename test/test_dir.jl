"""
Return a the path to the requested directory.

Arguments
----------
dir:Symbol
    target directory name 
"""
function test_dir(dir::Symbol) 
    if dir == :data
        return joinpath("data")
    elseif dir == :tmp
        return joinpath("tmp")
    else
        return ""
    end
end