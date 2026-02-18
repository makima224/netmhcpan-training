# netmhcpan-training
using deep learning tool for pan-prediction just by following the steps

#build the image 
docker build --no-cache -t mhc-class1 .

#download netMHCpan-4.2 linux arm64 on DTU website

#install nextflow locally and move it to an executable path (make sure u have a recent java version)
curl -s https://get.nextflow.io | bash
chmod +x nextflow
mkdir -p $HOME/.local/bin/
mv nextflow $HOME/.local/bin/


#RUN affinity with nextflow
nextflow run affinity.nf