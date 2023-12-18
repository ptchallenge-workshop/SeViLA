python train.py \
--cfg-path lavis/projects/sevila/train/pt.yaml \
model.frame_num=4 \
datasets.pt.vis_processor.train.n_frms=32 \
datasets.pt.vis_processor.eval.n_frms=32 \
run.batch_size_train=4 \
run.batch_size_eval=4 \
run.init_lr=3e-5 \
run.max_epoch=4 \
run.warmup_steps=1000 \
run.accum_grad_iters=2 \
model.task='qvh_freeze_loc_train_qa_with_loc_train_qa_vid' \
run.task='videoqa' \