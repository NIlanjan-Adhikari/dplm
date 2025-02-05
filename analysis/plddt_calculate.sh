# Example:
# bash analysis/plddt_calculate.sh generation-results/dplm_650m

output_dir=generation-results
dplm_result_path=generation-results/airkingbd/dplm_150m
output_filename_list=$(ls ${output_dir})
echo $output_filename_list

max_tokens=1024

echo "============================Begin Evaluation=============================="

pdb_path=$output_dir/esmfold_pdb

# folding
mkdir -p $pdb_path

echo 'folding by ESMFold'
python3 analysis/cal_plddt_dir.py -i ${dplm_result_path} -o ${pdb_path} --max-tokens-per-batch ${max_tokens}
# python3 analysis/cal_plddt_dir.py -i ${output_dir} -o ${pdb_path} --max-tokens-per-batch ${max_tokens} \
# 	-m ${ROOTDIR}/cache-dir

echo "============================Finish Evaluation=============================="

