#make bowtie indices for taxonomic mapping  
tar tvf referencegenomes.tar.gz;	#these are the original fasta files. 

cd referencegenomes
for f in *.fa
do
base=`basename $f .fa`
./bin/bowtie2-2.2.3/bowtie2-build $f $base;
done
