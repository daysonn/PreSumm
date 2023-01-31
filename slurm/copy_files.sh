#!/bin/bash
#SBATCH --partition=cpu-128g      # -p
#SBATCH --nodes=1                     # -N | node count, 1 nodes reserved
#SBATCH --time=7-00:00:00             # -t | total run time limit (HH:MM:SS)
#SBATCH --output=./logs/slurm.log     # Standard output and error log
#SBATCH --error=./logs/slurm.log

while true

    cd /home/dayson/PreSumm/models
    echo "Copiando modelos a partir de /Presumm/models/."
    for i in *
        do
            cp /home/dayson/PreSumm/models/$i /scratch/dayson/models/$i
        done

    cd /home/dayson/PreSumm/results
    if [[ -f ./* ]]
    then
        echo "Copiando resultados a partir de /Presumm/results/."
        for j in *
            do
                cp /home/dayson/PreSumm/results/$j /scratch/dayson/results/$j
            done
        
    fi


    cd /home/dayson/PreSumm/temp
    if [[ -f ./* ]]
    then
        echo "Copiando arquivos temporários a partir de /Presumm/temp/."
        for k in *
            do
                cp -r /home/dayson/PreSumm/temp/$k /scratch/dayson/tmp/$k
            done
    fi

    do 
        sleep 30
    done
