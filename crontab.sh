SHELL=/usr/bin/bash
HOME=/scicore/home/neher/roemer0001
PATH=/scicore/home/neher/roemer0001/tsv-utils/bin:/export/soft/lua_lmod/centos7/lmod/lmod/libexec:/scicore/home/neher/roemer0001/miniconda3/envs/nextstrain/bin:/scicore/home/neher/roemer0001/miniconda3/condabin:/export/soft/lua_lmod/centos7/lmod/lmod/libexec:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/scicore/home/neher/roemer0001/bin:/scicore/home/neher/roemer0001/bin

55 10 * * * cd /scicore/home/neher/roemer0001/ncov-simple; rm -r data; snakemake --unlock &>>cron.log; snakemake --profile=profiles/basel-combined-cluster preprocess -R download_sequences --rerun-incomplete &>>cron.log; cd /scicore/home/neher/roemer0001/ncov-simple-daily-builds;  snakemake --profile=profiles/basel-combined-cluster clean_all --rerun-incomplete &>>cron.log;  snakemake --profile=profiles/basel-combined-cluster deploy_test --rerun-incomplete &>>cron.log;

17 16 5 11 * cd /scicore/home/neher/roemer0001/ncov-simple; rm -r data; snakemake --unlock &>>cron.log; snakemake --profile=profiles/basel-combined-cluster preprocess -R download_sequences --rerun-incomplete &>>cron.log; cd /scicore/home/neher/roemer0001/ncov-simple-daily-builds;  snakemake --profile=profiles/basel-combined-cluster clean_all --rerun-incomplete &>>cron.log;  snakemake --profile=profiles/basel-combined-cluster deploy_test --rerun-incomplete &>>cron.log;

# 33 0 * * * cd /scicore/home/neher/roemer0001/ncov-simple-daily-builds;  snakemake --profile=profiles/basel-combined-cluster clean_all --rerun-incomplete &>>cron.log;  snakemake --profile=profiles/basel-combined-cluster deploy_test --rerun-incomplete &>>cron.log;
