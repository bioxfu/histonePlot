source activate deeptools
mkdir histone_plot
histoneChip_bw=/cluster/home/xfu/Gmatic7/histoneChip_bw

## Put peak files (bed) in the bed folder
bed_dir=bed

computeMatrix reference-point -p 10 --referencePoint center -S $histoneChip_bw/H*bw -R $bed_dir/*.bed -b 5000 -a 5000 -out ./histone_plot/histone_matrix.gz --missingDataAsZero --skipZeros -bs 10

plotProfile -m ./histone_plot/histone_matrix.gz -out ./histone_plot/histone_plot.png --numPlotsPerRow 2 --refPointLabel MbedPoint

