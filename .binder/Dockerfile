FROM rocker/binder:3.5.3
LABEL maintainer='Brendan Palmer'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}
RUN wget https://github.com/bapalmer/RSS_Belfast_2019/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2019-04-01/')); devtools::install_deps()"
