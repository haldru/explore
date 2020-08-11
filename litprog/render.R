fps <- list.files("litprog", pattern="*.Rmd", full.names = T, recursive = T)
fps <- fps[!grepl("dev\\.",fps)]
for (fp in fps) { rmarkdown::render(fp, output_format = "all", output_dir = "docs") }
