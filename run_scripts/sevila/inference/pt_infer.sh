python evaluate.py \
--cfg-path lavis/projects/sevila/eval/pt_eval.yaml \
model.frame_num=4 \
datasets.pt.vis_processor.eval.n_frms=32 \
run.batch_size_eval=2 \
model.task='qvh_freeze_loc_freeze_qa_vid' \
run.task='videoqa' \
run.num_workers=4