fresh_install <- function() {
  snipR::pkgs(

    # Essential:
    devtools,
    tidyverse,
    cowplot,

    # Stats:
    car,
    lme4,
    survminer,
    emmeans,

    # Publish:
    knitr,
    pander,
    bookdown,
    huxtable,
    texreg,

    # Visualise
    plotly
  )

  # Github files
  devtools::install_github(
    "renkun-ken/pipeR"
  )
}


