process Affinity {

    container 'mhc-class1'

    input:
    path f6

    output:
    path "results/*.txt"

    script:
    """
    python mhc.py ${f6} results
    """
}
