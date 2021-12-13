
# Project Name: Example Project

# Project constants, styles, themes etc
# Should only include functions and one message.
# Should not make any other modifications to the session environment.

# Anything that should be consistent across modules, such as naming, colors, constants, etc
# can be stored here and accessed via functions.
# Avoid storing large functions that should be considered methods.

message("Sourcing projectThemes.R")

# Store a constant as a function
getRarificationDepth <- function(){
    return(10000)
}

# Store a constant as a function, and include the optional log message
getScarcityFilterNumber <- function(quiet=FALSE){
    n = 10
    if (!quiet) message("In general, taxa must be detected in at least [", n, "] samples.")
    return(n)
}

# use consistent formatting
showPval <- function(pval){
    return(ifelse(pval < 2.2e-16, "<2.2e-16", format(pval,digits=3)) )
}

# Usage:
# getProjectColors()
# getProjectColors("histogram")
# getProjectColors(c("versicolor", "setosa", "virginica"))
getProjectColors <- function(names=NULL){
    # names - 1 or more names of projectColors to return
    # colors taken from `palette.colors("Set1", n=5)[c(2,4,5)]`
    projectColors = c(histogram="deepskyblue",
                      versicolor="#377EB8",
                      setosa="#984EA3",
                      virginica="#FF7F00")
    if (is.null(names)) return(projectColors)
    else return(projectColors[names])
}

addLegend <- function(colors, ...){
    # colors - named vector of color values, example: getProjectColors()
    # ... - other pargs passed to legend()
    legend(legend=names(colors), col=colors, bty="n", ...)
}

# Convenience method to view project colors.
# Usage:
# colorLegend(getProjectColors())
colorLegend <- function(colors, fileName=NULL, pch=16, ...){
    # colors - named vector of color values, example: getProjectColors()
    # fileName - (optional) file path to save the legend as a pdf.
    # ... - other pargs passed to legend()
    if ( !is.null(fileName) ){
        pdf(file=fileName)
    }
    
    plot.new()
    addLegend(colors, x="center", pch=pch, ...)
    
    if ( !is.null(fileName) ){
        dev.off()
    }
}
