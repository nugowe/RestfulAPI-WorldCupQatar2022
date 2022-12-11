FROM rstudio/plumber:latest
RUN apt-get update -qq
RUN R -e "install.packages('magrittr')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('polite')"
RUN R -e "install.packages('rvest')"
EXPOSE 8000
COPY . /api
CMD ["/api/WorldCupQatar2022.R"]





