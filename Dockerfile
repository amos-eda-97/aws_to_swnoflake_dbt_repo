# Use an official Ubuntu image as the base imageF
FROM ghcr.io/dbt-labs/dbt-snowflake:1.5.5
ENTRYPOINT [ "/bin/bash" ]
# COPY . /usr/app/
# COPY ./profiles/profiles.yml /root/.dbt/
RUN apt-get update
RUN apt-get install git bash
RUN git clone https://github.com/amos-eda-97/aws_to_swnoflake_dbt_repo.git

WORKDIR "/root"
RUN mkdir .dbt

WORKDIR "/usr/app/dbt/aws_to_swnoflake_dbt_repo"

RUN cp profiles/profiles.yml /root/.dbt/

# CMD ["cd"," ."]
# RUN pwd
COPY ./run_script.sh .
# CMD ./run_script.sh
# RUN ./run_script.sh
CMD ["./run_script.sh"]
# 
# RUN export PATH=$PATH:$(pwd)
# RUN echo $(pwd)
# RUN cp /usr/app/dbt/aws_to_swnoflake_dbt_repo/profiles/profiles.yml /root/.dbt/
# RUN echo $(pwd)
# RUN echo $PATH


# CMD /usr/app/run_script.sh
# CMD /usr/app/run_script.sh
# CMD ["/usr/app/run_script.sh"]
# CMD ./run_script.sh
#
# ["/usr/app/run_script.sh"]