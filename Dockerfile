FROM debian:stretch

LABEL maintainer="mrf252@cornell.edu"

ENV CPANMIRROR=http://cpan.cpantesters.org

# open port 3000
#
EXPOSE 3000

# create directory layout
#
RUN mkdir -p /home/production/local-lib
RUN mkdir /var/log/tea

# Install dependencies
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update -y --allow-unauthenticated
RUN apt-get upgrade -y
RUN apt-get install build-essential pkg-config apt-utils gnupg2 curl -y
RUN apt-get update --fix-missing -y
RUN apt-get install -y nginx git sudo lynx

RUN apt-get install cpanminus -y
RUN apt-get install make
RUN apt-get install gcc
RUN apt-get install r-base -y
RUN apt-get install r-base-dev
RUN apt-get install libopenblas-base -y --allow-unauthenticated
RUN apt-get install postgresql -y
RUN apt-get install postgresql-server-dev-all -y
RUN apt-get install postgresql
RUN apt-get install libpq-dev -y
RUN cpanm -L /home/production/local-lib inc::Module::Install
RUN cpanm -L /home/production/local-lib Catalyst::Devel
RUN cpanm -L /home/production/local-lib Catalyst::Runtime
RUN cpanm -L /home/production/local-lib MooseX::HasDefaults
RUN cpanm -L /home/production/local-lib Mason
RUN cpanm -L /home/production/local-lib Catalyst::View::HTML::Mason
RUN cpanm -L /home/production/local-lib/ Statistics::R
RUN cpanm -L /home/production/local-lib/ Catalyst::ScriptRunner
RUN cpanm -L /home/production/local-lib/ Catalyst::Controller::REST
RUN cpanm -L /home/production/local-lib/ Lucy::Simple
RUN cpanm -L /home/production/local-lib/ Array::Utils
RUN cpanm -L /home/production/local-lib/ DBIx::Class
RUN cpanm -L /home/production/local-lib/ Bio::Perl
RUN cpanm -L /home/production/local-lib/ Bio::BLAST::Database
RUN cpanm -L /home/production/local-lib/ DBD::Pg
RUN R -e "install.packages(c('d3heatmap', 'NOISeq', 'htmlwidgets'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

# Clone code
WORKDIR /home/production
#RUN /home/production/create-schema.sh

ENV HOME=/home/production
ENV PGPASSFILE=/home/production/.pgpass

RUN export PGPASSWORD='eapassword'

RUN git clone https://github.com/solgenomics/Tea.git
WORKDIR /home/production/Tea
RUN mkdir /home/production/tmp

RUN export PERL5LIB=/home/production/local-lib/lib/perl5:.
WORKDIR /home/production/Tea


