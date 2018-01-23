FROM postgres:9.5

RUN sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen
# RUN locale-gen pt_BR.UTF-8
# RUN locale-gen
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR:pt:en
ENV LC_ALL pt_BR.UTF-8  
ENV LC_COLLATE pt_BR.UTF-8
RUN localedef -f UTF-8 -i pt_BR pt_BR.UTF-8


#RUN "locale­-gen pt_BR pt_BR.UTF-8"
#RUN "dpkg­-reconfigure locales"


