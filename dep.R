local({
    r <- getOption('repos')
    r['CRAN'] <- 'https://cran.uni-muenster.de/'
    options(repos=r)
})

install.packages('devtools')
require(devtools)

install_version('jsonlite', version='1.4')
install_version('shiny', version='1.0.1')
install_version('ggplot2', version='2.2.1')
