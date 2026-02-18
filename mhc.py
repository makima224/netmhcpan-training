import os
import subprocess

alleles_1 = [
    "HLA-A23:01",
    "HLA-B*53:01",
    "HLA-C*04:01"
]

fasta_file = input("➡️give the file u wanna treat with HLA-A23:01,HLA-B*53:01 and HLA-C*04:01")

if not os.path.isfile(fasta_file):
    print("❌ Fichier introuvable. Assurez-vous que le chemin est correct.")
    exit(1)

os.makedirs("results", exist_ok=True)
output_file = os.path.join("results", "mhc_outfile.txt")

alleles_list = ",".join(alleles_1)

subprocess.run(
    ["netMHCpan", "-f", fasta_file, "-a", alleles_list, "-l", "9"],
    stdout=open(output_file, "w"),
    stderr=subprocess.PIPE,
    check=True
)

print(f"✅ treatment successfully finished u can find it in  {output_file}")

