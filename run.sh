export CUDA_VISIBLE_DEVICES=2
MODEL_PATH='Qwen/Qwen2.5-1.5B'
export GLOBAL_LANGUAGE_MODEL_NAME='Qwen/Qwen2.5-1.5B'
MODEL_NICKNAME=qwen15b
DATA_DIR='cais/mmlu'
TRAINING_DATA_NAME=mmlu
TARGET_TASK_NAMES=mmlu
TASK='cais/mmlu'
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt

SELECTED_DATA_OUTPUT_PATH="./selected_data"
PERCENTAGE=0.3 # percentage of the full data to train, you can specify the training file you want to use in the script
DATA_SEED=3
JOB_NAME=${MODEL_NICKNAME}-${TRAINING_DATA_NAME}-${TARGET_TASK_NAMES}

# warm up training
./less/scripts/train/warmup_lora_train.sh "$DATA_DIR" "$MODEL_PATH" "$PERCENTAGE" "$DATA_SEED" "$JOB_NAME"

CKPT=$(ls ./out/${JOB_NAME} | grep -oP 'checkpoint-\K[0-9]+' | sort -n | tail -1)

GRADIENT_TYPE="adam"
MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-${GRADIENT_TYPE}
DIMS="8192"

./less/scripts/get_info/grad/get_train_lora_grads.sh "$DATA_DIR" "$MODEL_PATH" "$OUTPUT_PATH" "$DIMS" "$GRADIENT_TYPE"


MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-sqg # for validation data, we always use sgd
# DATA_DIR=./less_data
DIMS="4096 8192" # We use 8192 as our default projection dimension 

./less/scripts/get_info/grad/get_eval_lora_grads.sh "$TASK" "$DATA_DIR" "$MODEL_PATH" $OUTPUT_PATH "$DIMS"

GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192
CKPTS="${CKPT}" # checkpoing index
CHECKPOINT_WEIGHTS="1.6877e-05" # average lr of the epoch

VALIDATION_GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192

./less/scripts/data_selection/matching.sh "$GRADIENT_PATH" "$TRAINING_DATA_NAME" "$CKPTS" "$CHECKPOINT_WEIGHTS" "$VALIDATION_GRADIENT_PATH" "$TARGET_TASK_NAMES" "$SELECTED_DATA_OUTPUT_PATH"

export CUDA_VISIBLE_DEVICES=2
MODEL_PATH='mistralai/Mistral-Small-Instruct-2409'
export GLOBAL_LANGUAGE_MODEL_NAME='mistralai/Mistral-Small-Instruct-2409'
MODEL_NICKNAME=mistral22b
DATA_DIR='cais/mmlu'
TRAINING_DATA_NAME=mmlu
TARGET_TASK_NAMES=mmlu
TASK='cais/mmlu'
# echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt

SELECTED_DATA_OUTPUT_PATH="./selected_data"
PERCENTAGE=0.3 # percentage of the full data to train, you can specify the training file you want to use in the script
DATA_SEED=3
JOB_NAME=${MODEL_NICKNAME}-${TRAINING_DATA_NAME}-${TARGET_TASK_NAMES}

# warm up training
./less/scripts/train/warmup_lora_train.sh "$DATA_DIR" "$MODEL_PATH" "$PERCENTAGE" "$DATA_SEED" "$JOB_NAME"

CKPT=$(ls ./out/${JOB_NAME} | grep -oP 'checkpoint-\K[0-9]+' | sort -n | tail -1)

GRADIENT_TYPE="adam"
MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-${GRADIENT_TYPE}
DIMS="8192"

./less/scripts/get_info/grad/get_train_lora_grads.sh "$DATA_DIR" "$MODEL_PATH" "$OUTPUT_PATH" "$DIMS" "$GRADIENT_TYPE"


MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-sqg # for validation data, we always use sgd
# DATA_DIR=./less_data
DIMS="4096 8192" # We use 8192 as our default projection dimension 

./less/scripts/get_info/grad/get_eval_lora_grads.sh "$TASK" "$DATA_DIR" "$MODEL_PATH" $OUTPUT_PATH "$DIMS"

GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192
CKPTS="${CKPT}" # checkpoing index
CHECKPOINT_WEIGHTS="1.6877e-05" # average lr of the epoch

VALIDATION_GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192

./less/scripts/data_selection/matching.sh "$GRADIENT_PATH" "$TRAINING_DATA_NAME" "$CKPTS" "$CHECKPOINT_WEIGHTS" "$VALIDATION_GRADIENT_PATH" "$TARGET_TASK_NAMES" "$SELECTED_DATA_OUTPUT_PATH"
















































# MODEL_PATH='distilbert/distilgpt2'
# MODEL_NICKNAME=phi
# DATA_DIR='llm-blender/mix-instruct'
# TRAINING_DATA_NAME=mixinstruct
# TARGET_TASK_NAMES=mixinstruct
# TASK='llm-blender/mix-instruct'
# # echo "${TRAINING_DATA_NAME} and ${TARGET_TASK_NAMES} on ${MODEL_NICKNAME}" >> error.txt

# SELECTED_DATA_OUTPUT_PATH="./selected_data"
# PERCENTAGE=0.3 # percentage of the full data to train, you can specify the training file you want to use in the script
# DATA_SEED=3
# JOB_NAME=${MODEL_NICKNAME}-${TRAINING_DATA_NAME}-${TARGET_TASK_NAMES}

# # warm up training
# ./less/scripts/train/warmup_lora_train.sh "$DATA_DIR" "$MODEL_PATH" "$PERCENTAGE" "$DATA_SEED" "$JOB_NAME"

# CKPT=$(ls ./out/${JOB_NAME} | grep -oP 'checkpoint-\K[0-9]+' | sort -n | tail -1)

# GRADIENT_TYPE="adam"
# MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
# OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-${GRADIENT_TYPE}
# DIMS="8192"

# ./less/scripts/get_info/grad/get_train_lora_grads.sh "$DATA_DIR" "$MODEL_PATH" "$OUTPUT_PATH" "$DIMS" "$GRADIENT_TYPE"


# MODEL_PATH=./out/${JOB_NAME}/checkpoint-${CKPT}
# OUTPUT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-sqg # for validation data, we always use sgd
# # DATA_DIR=./less_data
# DIMS="4096 8192" # We use 8192 as our default projection dimension 

# ./less/scripts/get_info/grad/get_eval_lora_grads.sh "$TASK" "$DATA_DIR" "$MODEL_PATH" $OUTPUT_PATH "$DIMS"

# GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192
# CKPTS="${CKPT}" # checkpoing index
# CHECKPOINT_WEIGHTS="1.6877e-05" # average lr of the epoch

# VALIDATION_GRADIENT_PATH=./grads/${JOB_NAME}/${TRAINING_DATA_NAME}-ckpt${CKPT}-adam/dim8192

# ./less/scripts/data_selection/matching.sh "$GRADIENT_PATH" "$TRAINING_DATA_NAME" "$CKPTS" "$CHECKPOINT_WEIGHTS" "$VALIDATION_GRADIENT_PATH" "$TARGET_TASK_NAMES" "$SELECTED_DATA_OUTPUT_PATH"
