FROM rstudio/plumber:latest
RUN apt-get update -qq
RUN R -e "install.packages('magrittr')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('polite')"
RUN R -e "install.packages('rvest')"
EXPOSE 8000
COPY . /usr/local/lib/R/site-library/plumber/plumber/04-mean-sum/

CMD ["/usr/local/lib/R/site-library/plumber/plumber/04-mean-sum//WorldCupQatar2022.R"]







