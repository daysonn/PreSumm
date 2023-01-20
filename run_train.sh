python /home/dayson/PreSumm/src/train.py \
-task abs \
-mode train \
-accum_count 1 \
-batch_size 1 \
-bert_data_path /home/dayson/PreSumm/bert_data \
-dec_dropout 0.2 \
-log_file /home/dayson/PreSumm/logs/pt-br-bertAbs-train.log \
-lr_bert 0.002 \
-model_path /home/dayson/PreSumm/models \
-save_checkpoint_steps 500 \
-use_interval true \
-sep_optim true \
-lr_dec 0.2 \
-train_steps 200000 \
-use_bert_emb true \
-warmup_steps_bert 20000 \
-visible_gpus 0 \
-warmup_steps_dec 10000 \
-max_pos 3000 \
-report_every 20