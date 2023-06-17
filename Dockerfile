FROM madebytimo/nodejs

WORKDIR /app/leon-ai

RUN npm install --global @leon-ai/cli
RUN leon create birth

RUN mkdir /media/leon-ai

ENV FRONTEND_URL=""
ENV LANGUAGE=""
ENV PORT="80"
ENV TELEMETRY="false"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "leon", "start" ]
