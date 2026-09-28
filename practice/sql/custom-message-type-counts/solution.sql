select reply_to as recipient_id, msg_type, count(msg_type) as msg_count from chat_msgs
where (msg_type) not in ('text','image') and reply_to is NOT NULL
group by sender_id,msg_type;
