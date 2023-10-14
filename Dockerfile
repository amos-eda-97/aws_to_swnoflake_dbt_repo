# Use an official Ubuntu image as the base image
FROM ghcr.io/dbt-labs/dbt-snowflake:1.5.5

# COPY . /usr/app/
# COPY ./profiles/profiles.yml /root/.dbt/
RUN apt-get update
RUN apt-get install git
RUN git clone https://github.com/amos-eda-97/aws_to_swnoflake_dbt_repo.git .
# CMD ["/bin/bash"]
# CMD ["cd"," ."]
# RUN pwd
RUN cp ./aws_to_swnoflake_dbt_repo/profiles/profiles.yml /root/.dbt/
# RUN dbt deps
# RUN dbt run-operation stage_external_sources
# RUN dbt run
