# --------------------   wiseSheet  -------------------------------------------#
rm(list=ls(all = TRUE)) 

# Carica pacchetti necessari
require(LAsheet)

# ---- Path settings
path <- "/data/LAsheet/"
path_in <- file.path(path,"data/input/")
path_out <- file.path(path,"data/output/")
path_meta <- file.path(path,"data/meta/")

# ---- Import meta data
in_file_meta <- system(paste('ls -t', path_meta, '| head -n1', sep = ' '), intern = T)
.list_meta <- read_excel_allsheets(file.path(path_meta,in_file_meta))


