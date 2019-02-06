fresh_install <- function() {
  snipR::pkgs(
    
    # Essential:
    devtools,
    tidyverse,
    cowplot,
    lubridate,

    # Stats:
    car,
    lme4,
    survminer,
    scales,
    emmeans,
    data.table,

    # Publish:
    knitr,
    pander,
    bookdown,
    huxtable,
    texreg,
    kableExtra,

    # Visualise
    plotly,
    viridis,
    ggthemes.
    RColorBrewer
  )

  # Github files
  devtools::install_github(
    "renkun-ken/pipeR"
  )
}


