FROM python:3.12-slim 
#version slim adapté pour linux

#  "\" doit être le dernier caractère en Docker pas d'espace ou de tabulation
RUN apt-get update && apt-get install -y \

# Installer dépendances nécessaires à NetMHCpan:
#NetMHCpan utilise des scripts en tcsh
tcsh\

#NetMHCpan s’appuie dessus en interne pour le parsing de texte
gawk\

#beaucoup de pipelines bioinfo reposent sur Perl
perl\

#reduis l'image et vide le cache d'installation
rm -rf /var/lib/apt/lists/* 


# Dossier de travail
WORKDIR /app

# Copier NetMHCpan (Class I uniquement)
COPY netMHCpan-4.2 /opt/netMHCpan-4.2

# Variable attendue par DTU
ENV NETMHCpan=/opt/netMHCpan-4.2

# Ajouter les binaires au PATH (ARM64 pour Mac M1/M2)
ENV PATH="/opt/netMHCpan-4.2/Linux_arm64/bin:${PATH}"

# Fix permissions
RUN chmod +x /opt/netMHCpan-4.2/Linux_arm64/bin/netMHCpan-4.2

# TMPDIR (évite erreurs tmp)
ENV TMPDIR=/tmp
RUN mkdir -p /tmp && chmod 1777 /tmp

# Copier le script
COPY mhc.py .


