process Affinity {
    container "cmh_env"

    input: path files

    output: path "/results/*.txt"

    script: 
    """ python /app/mhc.py ${files[0]} ${files[1]} results 
    """
}