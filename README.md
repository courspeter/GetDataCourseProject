How to use the script `run_analysis.R`:

 * extract the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) into the current working directory (i.e. data files should be under `./UCI HAR Dataset/`)
 * create directory `output` for the output data
 * execute `Rscript run_analysis.R`
 * confirm that `./output/feature-means.txt` has been created

`run_analysis.R` consists of 5 parts, each corresponding to a step in the assignment. The flow for each step is described in the comments. The script depends on the [`reshape2` library](http://cran.r-project.org/web/packages/reshape2/index.html).

Refer to CodeBook.md for details about the data formats.