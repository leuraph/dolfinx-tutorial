FROM dokken92/dolfinx_custom:tutorials


ARG NB_USER=fenics
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

RUN git clone 
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN ch

RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}