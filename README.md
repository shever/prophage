# ISBRA2018_Prediction of Prophage insertion sites on Pseudomonas Genomes

##Supplementary tables for Prediction of Prophage insertion sites:

###supplement.xlsx

- S1 Bacteria strains used in this work
- S2 All discovered bacteriophages in Pseudomonas genome
- S3 Prophage that can be found in data listed in S1
- S4 BLAST result for S3 mapping to S1
- S5 Tandem repeats in both S1 and S3
- S6 Insertion sites identified by BLAST
- S7 Insertion sites identified by PHASTER
- S6 UNION S7
- S8 Insertion sites predicted by GC-density
- S9 Genome annotation for prophage protein 

###annotation

- anno.xlsx 
%%whole genome annotation by NCBI database

- 1.phage 

      - Four kinds of prophage proteins and their distributions. Each column: strain ID\tprotein label\tposition
      
      - transposase- integrase
      
      - tail protein
      
      - terminase

      - protease  ~This one is evenly distributed in bacteria chromosomes.


##for plotting GC-curve:

      code: plot_curve.R

      data: curve data: *.gc;

            annotation data: ::1.phage::.


##Code for GC-density model:

      Usage: Download gc_curve executable file and use it directly. 

      Command: ./gc_curve *.fa(*.fasta)  [window_size(integer)] [out.name]

      If you want to see the source code, please refer to gc_curve.cpp

      compile: g++ gc_curve.cpp -o gc_curve

