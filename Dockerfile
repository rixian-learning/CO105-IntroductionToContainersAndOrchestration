# Copy notebooks

COPY ./notebooks/ ${HOME}/notebooks/

# Copy package sources

COPY ./nuget.config ${HOME}/nuget.config

RUN chown -R ${NB_UID} ${HOME}
USER ${USER}