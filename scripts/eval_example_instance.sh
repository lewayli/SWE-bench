RESULTS_DIR=experiments/results_full
MODEL_NAME=xxx
DATASET_DIR=cache/datasets
DATASET=FEABench_full
TIMEOUT=900

# Detailed Natural Prompt
MODE=natural
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


# Brief Natural Prompt
MODE=natural_simple
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


# Detailed Patch Prompt
MODE=text
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}
