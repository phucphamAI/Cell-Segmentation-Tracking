exp="default"
gpu_num="1"

model="aott"
# ## Training ##
stage="cell"
python tools/train.py \
	--exp_name ${exp} \
	--stage ${stage} \
	--model ${model} \
	--gpu_num ${gpu_num}
	
# stage="pre_ytb_dav"
# python tools/train.py --amp \
# 	--exp_name ${exp} \
# 	--stage ${stage} \
# 	--model ${model} \
# 	--gpu_num ${gpu_num}

## Evaluation ##
dataset="cell"
split="val"
python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="davis2017"
# split="val"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="davis2016"
# split="val"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="youtubevos2018"
# split="val"  # or "val_all_frames"
# python tools/eval.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}

# dataset="youtubevos2019"
# split="train"  # or "val_all_frames"
# python tools/train.py --exp_name ${exp} --stage ${stage} --model ${model} \
# 	--dataset ${dataset} --split ${split} --gpu_num ${gpu_num}