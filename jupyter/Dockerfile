FROM rixian/dotnet-interactive-base:21022301

# Copy notebooks
COPY ./notebooks/ ${HOME}/notebooks/

# Copy package sources
COPY ./nuget.config ${HOME}/nuget.config

RUN chown -R ${NB_UID} ${HOME}
USER ${USER}

# Set root to notebooks
WORKDIR ${HOME}/notebooks/