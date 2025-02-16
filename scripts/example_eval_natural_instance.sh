RESULTS_DIR=experiments/results_full
DATASET_DIR=cache/datasets
DATASET=FEABench_full
TIMEOUT=900
MODE=natural

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=gpt-4o
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=gpt-4-turbo
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=azure_o1_2024-12-17
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=azure_o1-mini
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}



docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=DeepSeek-Coder-V2-Lite-Instruct
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=Codestral-22B-v0.1
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=CodeLlama-13b-Instruct-hf
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=CodeLlama-34b-Instruct-hf
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=Qwen2.5-Coder-14B-Instruct
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=Qwen2.5-Coder-32B-Instruct
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=DeepSeek-R1-Distill-Qwen-32B
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=volcano_deepseek
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

MODEL_NAME=volcano_deepseek_v3
python -m swebench.harness.run_evaluation \
    --dataset_name $DATASET_DIR/$DATASET \
    --predictions_path $RESULTS_DIR/$MODE/${MODEL_NAME}__${DATASET}__test.jsonl \
    --max_workers 10 \
    --cache_level instance \
    --timeout $TIMEOUT \
    --run_id ${DATASET}_${MODE}_${MODEL_NAME}
