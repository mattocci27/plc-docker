FROM rocker/verse:3.6.3

RUN install2.r -n -1 --error \
    --deps TRUE \
    --repos mirror.lzu.edu.cn/CRAN \
    tictoc \
    cowplot \
    kableExtra

RUN Rscript -e "devtools::install_github('remkoduursma/fitplc')"
RUN Rscript -e "devtools::install_github('mattocci27/fitplc2')"
