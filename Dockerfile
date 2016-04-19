FROM ruby:2.3.0

ENV APP_HOME /app

# create $APP_HOME folder and set it as workdir
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# add soucecode to $APP_HOME
ADD . $APP_HOME

# install app requirements
RUN bundle install
