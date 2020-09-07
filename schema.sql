
create table `h2olog.quic` (
  `type` string,
  `ordering` int64, -- a sequence number added by h2olog-collector
  `seq` int64, -- a sequence number added by `h2olog`

  `lost` int64, -- type="h2olog-event-lost"

  `first_octet` int64, -- first octet of quicly:receive#bytes
  `conn` int64,
  `time` timestamp,
  `version` int64,
  `dcid` string,
  `state` int64,
  `bytes_len` int64,
  `new_version` int64,
  `pn` int64,
  `decrypted_len` int64,
  `ret` int64,
  `is_enc` int64,
  `epoch` int64,
  `label` string,
  `phase` int64,
  `next_pn` int64,
  `first_octet` int64,
  `len` int64,
  `ack_only` int64,
  `is_late_ack` int64,
  `inflight` int64,
  `cwnd` int64,
  `pto_count` int64,
  `largest_acked` int64,
  `bytes_acked` int64,
  `max_lost_pn` int64,
  `ack_delay` int64,
  `error_code` int64,
  `frame_type` int64,
  `reason_phrase` string,
  `stream_id` int64,
  `off` int64,
  `is_fin` int64,
  `limit` int64,
  `is_unidirectional` int64,
  `token` string,
  `token_len` int64,
  `generation` int64,
  `sequence` int64,
  `retire_prior_to` int64,
  `cid` string,
  `packet_tolerance` int64,
  `max_ack_delay` int64,
  `ignore_order` int64,
  `packet_type` int64,
  `fin` int64,
  `ack_block_begin` int64,
  `ack_block_end` int64,
  `min_rtt` int64,
  `smoothed_rtt` int64,
  `variance_rtt` int64,
  `latest_rtt` int64,
  `err` int64,
  `delta` int64,
  `capacity` int64,
  `src_len` int64,
  `size` int64,
  `conn_id` int64,
  `req_id` int64,
  `name` string,
  `name_len` int64,
  `value` string,
  `value_len` int64
)
partition by date(`time`);
