FROM node:6.5

ARG NPM_TOKEN
ENV PORT 9000


#RUN yum -y update; yum clean all
#RUN yum -y install epel-release; yum clean all


######
# Install Node.js 6.x repository
#RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
#RUN yum -y install nodejs
######





COPY . .

#npm install grunt ; npm install crypto ;  npm install node-uuid ; npm install email-templates
RUN npm install
#RUN npm audit fix


EXPOSE 9000



CMD ["node", "mongo-test.js"]

