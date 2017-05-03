FROM registry.ng.bluemix.net/ibmnode:latest
COPY ./ jke-banking
WORKDIR jke-banking
RUN npm install -d --production
EXPOSE 81
ENV PORT 81
ENV DOCKER true
CMD ["node", "app.js"]