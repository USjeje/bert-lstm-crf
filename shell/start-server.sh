#bert-base-serving-start \
#  -model_dir /app/label \
#  -bert_model_dir /app/bert/chinese_L-12_H-768_A-12 \
#  -model_pb_dir /app/ner_model \
#  -ckpt_name bert_model.ckpt \
#  -config_name bert_config.json \
#  \
#  -max_seq_len 128 \
#  -max_batch_size 16 \
#  \
#  -port_in 5555 \
#  -port_out 5556 \
#  -num_worker 1 \
#  -gpu_memory_fraction 0.5 \
#  -device_map 0 \
#  -prefetch_size 10 \
#  -mode NER
  # -http_port 5658 # 开启flask http

  #   -device_map 0 \

  bert-base-serving-start \
  -model_dir /var/pbx/lbh/ner/server/bert_lstm_crf/label \
  -bert_model_dir /var/pbx/lbh/ner/server/bert_lstm_crf/bert/chinese_L-12_H-768_A-12 \
  -model_pb_dir /var/pbx/lbh/ner/server/bert_lstm_crf/ner_model \
  -ckpt_name bert_model.ckpt \
  -config_name bert_config.json \
  \
  -max_seq_len 128 \
  -max_batch_size 16 \
  \
  -port_in 5555 \
  -port_out 5556 \
  -num_worker 1 \
  -gpu_memory_fraction 0.5 \
  -prefetch_size 10 \
  -device_map 0 \
  -mode NER