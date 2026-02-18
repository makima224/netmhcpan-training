FROM python: 3.12-slim 
#version slim adapté pour linux

RUN apt-get update && apt-get install -y \ 

#NetMHCpan utilise des scripts en tcsh
tcsh\

#NetMHCpan s’appuie dessus en interne pour le parsing de texte
gawk\

#beaucoup de pipelines bioinfo reposent sur Perl
perl\

#reduis l'image et vide le cache d'installation
rm -rf /var/lib/apt/lists/* 

#dossier de travail
WORKDIR /app  

RUN pip install --no-cache-dir biopython

COPY mhc.py

COPY /netMHCpan-4.2 &&\
     /netMHCIIpan-4.3

RUN chmod 111 /netMHCpan-4.2 &&\
              /netMHCIIpan-4.3

