FROM splunk/splunk:9.0.3

USER root
RUN groupmod -g 1001 sudo  \
    && chown -R ${ANSIBLE_USER}:${ANSIBLE_GROUP} ${CONTAINER_ARTIFACT_DIR} \
    && usermod -u 1000 ${SPLUNK_USER} \
    && groupmod -g 1000 ${SPLUNK_GROUP} \
    && chown -R ${SPLUNK_USER}:${SPLUNK_GROUP} ${SPLUNK_HOME}