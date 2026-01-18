#!/bin/bash

# Use the model name or cache directory path
# If using HF cache, provide cache_dir separately
lm_eval --device mps --model hf --model_args \
pretrained=meta-llama/Llama-3.2-1B,dtype=float16,trust_remote_code=True,cache_dir=./hf \
--tasks truthfulqa_mc1 \
--batch_size 16 --log_samples --output_path eval_results