RESULTS_DIR=/xxx/experiments/oracle
MODEL_NAME=Qwen2.5-Coder-32B-Instruct
DATASET_DIR=/xxx/datasets
DATASET=FEABench_v1
TIMEOUT=900

MODE=natural
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}
