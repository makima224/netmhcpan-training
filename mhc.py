alleles_1=[
    "HLA-A23:01",

    "HLA-B*53:01",

    "HLA-C*04:01"
]



import sys, os, subprocess

def run_machine(f6,outdir="results"):
   os.makedirs(outdir,exist_ok=True)

   with open (out_file,"mhc_outfile",'w') as out
   subprocess.run 
   ( ["netMHCpan-4.2",
      "-f",f6,
      "-a",alleles_1,
      "-l",9] ,

   stdout=out,stderr=subprocess.PIPE, check=True
   ) 
  


