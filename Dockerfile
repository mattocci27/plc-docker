FROM mattocci/r-debian

RUN Rscript -e "devtools::install_github('mattocci27/fitplc', upgrade = 'never')" \
  && install2.r --error \
    --deps TRUE \
    propagate \
    merTools \
    tictoc
