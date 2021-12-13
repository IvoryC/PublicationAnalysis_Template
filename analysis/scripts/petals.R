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


outFile = file.path(outDir, "petals.pdf")
message("Saving file: ", basename(outFile))
pdf(outFile)

petalColors = getProjectColors(levels(iris$Species))

boxplot(iris$Petal.Length ~ iris$Species, 
        las=1, cex=2, main="Length",
        xlab="Species", ylab="petal length", 
        col=petalColors)

boxplot(iris$Petal.Width ~ iris$Species, 
        las=1, cex=2, main="Width",
        xlab="Species", ylab="petal width", 
        col=petalColors)

dev.off()

########## End with message ##############################
message("")
message("Done!")
message("")
message(rep("=", 50))
sessionInfo()
message("")
