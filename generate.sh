model_name=airkingbd/dplm_150m # choose from dplm_150m, dplm_650m, dplm_3b
output_dir=generation-results/${model_name}

mkdir -p generation-results

python generate.py --model_name ${model_name} \
	--seq_lens 100 200 300 400 500 \
	--saveto ${output_dir}