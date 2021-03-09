ARG BASE_CONTAINER=montereytony/mba263:103042
FROM $BASE_CONTAINER
LABEL maintainer="<montereytony@gmail.com>"
USER root

USER $NB_UID

RUN pip install  --upgrade \
    lxml \
    pykalman\
    pymc3\
    quantecon\
    pandas-datareader\
    quandl\
    pixiedust\
    python-dotenv\
    requests\
    sympy\
    sqlalchemy\
    urllib3 \
   yahoofinancials \
   pybea \
   yfinance \
   arch \
   wrds \
   johansen 


USER $NB_UID

WORKDIR $HOME
