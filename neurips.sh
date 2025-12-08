
# MixInstruct

## Qwen/Qwen2.5-1.5B
            export CUDA_VISIBLE_DEVICES=2
            MODEL_PATH='Qwen/Qwen2.5-1.5B'
            MODEL_NICKNAME="qwen15b"
            DATA_DIR='llm-blender/mix-instruct'
            TRAINING_DATA_NAME=mi
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

## mistralai/Mistral-7B-Instruct-v0.1
            export CUDA_VISIBLE_DEVICES=0
            MODEL_PATH='mistralai/Mistral-7B-Instruct-v0.1'
            MODEL_NICKNAME="mistral22b"
            DATA_DIR='llm-blender/mix-instruct'
            TRAINING_DATA_NAME=mi
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

## distilbert/distilgpt2
            export CUDA_VISIBLE_DEVICES=2
            MODEL_PATH='distilbert/distilgpt2'
            MODEL_NICKNAME="distilgpt2"
            DATA_DIR='llm-blender/mix-instruct'
            TRAINING_DATA_NAME=mi
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

# Alpaca

## Qwen/Qwen2.5-1.5B
            export CUDA_VISIBLE_DEVICES=1
            MODEL_PATH='Qwen/Qwen2.5-1.5B'
            MODEL_NICKNAME="qwen15b"
            DATA_DIR='tatsu-lab/alpaca'
            TRAINING_DATA_NAME=alpaca
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

## mistralai/Mistral-7B-Instruct-v0.1
            export CUDA_VISIBLE_DEVICES=2
            MODEL_PATH='mistralai/Mistral-7B-Instruct-v0.1'
            MODEL_NICKNAME="mistral22b"
            DATA_DIR='tatsu-lab/alpaca'
            TRAINING_DATA_NAME=alpaca
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

            ## distilbert/distilgpt2
            export CUDA_VISIBLE_DEVICES=3
            MODEL_PATH='distilbert/distilgpt2'
            MODEL_NICKNAME="distilgpt2"
            DATA_DIR='tatsu-lab/alpaca'
            TRAINING_DATA_NAME=alpaca
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh


# MMLU

## Qwen/Qwen2.5-1.5B
            export CUDA_VISIBLE_DEVICES=2
            MODEL_PATH='Qwen/Qwen2.5-1.5B'
            MODEL_NICKNAME="qwen15b"
            DATA_DIR='cais/mmlu'
            TRAINING_DATA_NAME=mmlu
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

## mistralai/Mistral-7B-Instruct-v0.1
            MODEL_PATH='mistralai/Mistral-7B-Instruct-v0.1'
            MODEL_NICKNAME="mistral22b"
            DATA_DIR='cais/mmlu'
            TRAINING_DATA_NAME=mmlu
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

            ## distilbert/distilgpt2
            MODEL_PATH='distilbert/distilgpt2'
            MODEL_NICKNAME="distilgpt2"
            DATA_DIR='cais/mmlu'
            TRAINING_DATA_NAME=mmlu
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh

            ## meta-llama/Llama-3.1-8B
            MODEL_PATH='meta-llama/Llama-3.1-8B'
            MODEL_NICKNAME="llama8b"
            DATA_DIR='cais/mmlu'
            TRAINING_DATA_NAME=mmlu
            export GLOBAL_LANGUAGE_MODEL_NAME=$MODEL_PATH
            TARGET_TASK_NAMES=$TRAINING_DATA_NAME
            TASK=$DATA_DIR
            source less.sh