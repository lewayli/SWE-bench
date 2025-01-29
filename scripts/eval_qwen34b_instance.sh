RESULTS_DIR=/home/v-weili8/experiments/oracle
MODEL_NAME=Qwen2.5-Coder-32B-Instruct
DATASET_DIR=/home/v-weili8/cache/datasets
DATASET=FEABench_v0
TIMEOUT=900

MODE=natural
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


MODE=natural_simple
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


MODE=text
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


MODE=text_simple
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}
