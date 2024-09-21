rm -rf ../grads ../out ../selected_data

### PHI EXPERIMENTS ###

# MODEL_PATH=microsoft/Phi-3-mini-128k-instruct
# MODEL_NICKNAME=Phi

# ## Use case 1: same dataset ##
# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/mix-instruct.pkl
# TRAINING_DATA_NAME=mix-instruct
# TARGET_TASK_NAMES=mix-instruct
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/mix-instruct.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/P3.pkl
# TRAINING_DATA_NAME=P3
# TARGET_TASK_NAMES=P3
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/P3.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

# ## Use case 2: benchmark ##

# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/mix-instruct.pkl
# TRAINING_DATA_NAME=mix-instruct
# TARGET_TASK_NAMES=benchmark_mt_bench_human_judgments
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/benchmark_mt_bench_human_judgments.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/hotpot_qa.pkl
# TRAINING_DATA_NAME=hotpot_qa
# TARGET_TASK_NAMES=benchmark_mmlu
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/benchmark_mmlu.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

# ## Use case 3: continual learning ##
# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/ibm_ft.pkl
# TRAINING_DATA_NAME=ibm_ft
# TARGET_TASK_NAMES="gov"
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/gov.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

# DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/squad.pkl
# TRAINING_DATA_NAME=squad
# TARGET_TASK_NAMES="hotpot_qa"
# TASK=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/hotpot_qa.pkl
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
# source run.sh 2>> error.txt

### QWEN EXPERIMENTS ###

MODEL_PATH=Qwen/Qwen2-7B-Instruct
MODEL_NICKNAME=Qwen

## Use case 1: same dataset ##
DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/mix-instruct.pkl
TRAINING_DATA_NAME=mix-instruct
TARGET_TASK_NAMES=mix-instruct
TASK=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/mix-instruct.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/P3.pkl
TRAINING_DATA_NAME=P3
TARGET_TASK_NAMES=P3
TASK=/u/ishikaa2/optimizing-data-selection/visualization/same_data_cache/dataset_pkls/P3.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

## Use case 2: benchmark ##

DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/mix-instruct.pkl
TRAINING_DATA_NAME=mix-instruct
TARGET_TASK_NAMES=benchmark_mt_bench_human_judgments
TASK=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/benchmark_mt_bench_human_judgments.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/hotpot_qa.pkl
TRAINING_DATA_NAME=hotpot_qa
TARGET_TASK_NAMES=benchmark_mmlu
TASK=/u/ishikaa2/optimizing-data-selection/visualization/benchmark_cache/dataset_pkls/benchmark_mmlu.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

## Use case 3: continual learning ##
DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/ibm_ft.pkl
TRAINING_DATA_NAME=ibm_ft
TARGET_TASK_NAMES="gov"
TASK=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/gov.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

DATA_DIR=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/squad.pkl
TRAINING_DATA_NAME=squad
TARGET_TASK_NAMES="hotpot_qa"
TASK=/u/ishikaa2/optimizing-data-selection/visualization/version_cache/dataset_pkls/hotpot_qa.pkl
echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt
source run.sh 2>> error.txt

notify "less - good god"