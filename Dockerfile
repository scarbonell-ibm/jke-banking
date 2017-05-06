FROM registry.ng.bluemix.net/ibmnode:latest
COPY ./ jke-banking
WORKDIR jke-banking
RUN npm install -d --production
EXPOSE 80
ENV PORT 80
ENV DOCKER true
CMD ["npm", "start"]