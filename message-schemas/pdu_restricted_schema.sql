CREATE VIEW pdu_restricted AS SELECT * FROM pdu WHERE (msg_box=1 OR msg_box=2) AND (m_type!=130)
/* pdu_restricted(_id,thread_id,date,date_sent,msg_box,read,m_id,sub,sub_cs,ct_t,ct_l,exp,m_cls,m_type,v,m_size,pri,rr,rpt_a,resp_st,st,tr_id,retr_st,retr_txt,retr_txt_cs,read_status,ct_cls,resp_txt,d_tm,d_rpt,locked,sub_id,seen,creator,text_only) */;
