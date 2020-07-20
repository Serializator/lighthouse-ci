FROM node:13.14

# set up key needed for google-chrome-stable
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# set up repository for google-chrome-stable
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# install script dependencies
RUN apt-get update && apt-get install google-chrome-stable -y
RUN npm i -g @lhci/cli
