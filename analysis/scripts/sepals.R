########## Be a pipeline module ####################

moduleDir = dirname(getwd())
pipeRoot = dirname(moduleDir)
outDir = file.path(moduleDir, "output")
message("Using output directory: ", outDir)

if(!dir.exists(outDir)){
    dir.create(outDir, recursive = TRUE, showWarnings = FALSE)
}

########## MAIN  #########################################

styleFile = file.path(dir(pipeRoot, "Style", full.names = TRUE), "output", "projectThemes.R")
message("Read style file: ", styleFile)
source(styleFile)

datafile = file.path(pipeRoot, "input", "example", "iris.tsv")
message("Reading input file: ", basename(datafile))
data = read.delim(datafile)

outFile = file.path(outDir, "sepals.pdf")
message("Saving file: ", basename(outFile))
pdf(outFile)

plot(iris$Sepal.Length, iris$Sepal.Width, 
     las=1, pch=16,
     xlab="Length", ylab="Width", main="Sepals",
     col=getProjectColors(as.character(iris$Species)))

# Add legend in the same file but outside of the main plot.
# For figures, manually place/size the legend on or around the main plot.
colorLegend(getProjectColors(levels(iris$Species)))

dev.off()

########## End with message ##############################
message("")
message("Done!")
message("")
message(rep("=", 50))
sessionInfo()
message("")
