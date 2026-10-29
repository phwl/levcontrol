function [tdata, tvalid, tlast, tkeep, tready, trigger_out, dec_cnt_out, frame_cnt_out, mux_cnt_out, data_sel_out, last_frame_out] = throttle_core(data_vec, data_sel, tready_in, decim_val, frames_val, trigger_in, usr_rst, AXIS_WIDTH, NO_CHANNELS)
%THROTTLE_CORE Summary of this function goes here
%   Detailed explanation goes here
%AXIS_WIDTH = {xlUnsigned, AXIS_WIDTH, 0};

DATA_SEL_BITS = xl_nbits(NO_CHANNELS);
RDY_DELAY_STAGES = 5;
AXIS_OUT_STAGES = 2;

persistent triggered, triggered = xl_state(0, {xlBoolean, 1, 0});
persistent decim_count, decim_count = xl_state(0, {xlUnsigned, 16, 0});
persistent frame_count, frame_count = xl_state(0, {xlUnsigned, 32, 0});
persistent mux_count, mux_count = xl_state(0, {xlUnsigned, DATA_SEL_BITS, 0});
persistent muxing_run, muxing_run = xl_state(0, {xlBoolean, 1, 0}); 
persistent data_vec_store, data_vec_store = xl_state(zeros(1,NO_CHANNELS),{xlUnsigned, AXIS_WIDTH, 0});
persistent data_sel_store, data_sel_store = xl_state(0 ,{xlUnsigned, NO_CHANNELS, 0});
persistent last_frame_flag, last_frame_flag = xl_state(0, {xlBoolean, 1, 0});

persistent tdata_fifo, tdata_fifo = xl_state(zeros(1, AXIS_OUT_STAGES), {xlUnsigned, AXIS_WIDTH, 0}, AXIS_OUT_STAGES);
persistent tvalid_fifo, tvalid_fifo = xl_state(zeros(1, AXIS_OUT_STAGES), {xlUnsigned, 1, 0}, AXIS_OUT_STAGES);
persistent tlast_fifo, tlast_fifo = xl_state(zeros(1, AXIS_OUT_STAGES), {xlUnsigned, 1, 0}, AXIS_OUT_STAGES); 

persistent delayed_ready, delayed_ready = xl_state(zeros(1,RDY_DELAY_STAGES), {xlBoolean,1,0});


if(usr_rst==xfix({xlBoolean, 1, 0},1)) %Reset
    triggered = false;
    decim_count = 0;
    frame_count = 0;
    mux_count = 0;
    muxing_run = false;
    data_sel_store = 0;
    last_frame_flag = false;
    for i=(RDY_DELAY_STAGES-1):-1:0
        delayed_ready(i) = 0;
    end
    data_vec_store(0) = 0;
    data_vec_store(1) = 0;
    data_vec_store(2) = 0;
    data_vec_store(3) = 0;
    data_vec_store(4) = 0;
    data_vec_store(5) = 0;
    data_vec_store(6) = 0;
    data_vec_store(7) = 0;
    
    tdata = xfix({xlUnsigned, AXIS_WIDTH, 0}, 0);
    tvalid = xfix({xlUnsigned, 1, 0}, 0);
    tlast = xfix({xlUnsigned, 1, 0}, 0);
    tkeep = xfix({xlUnsigned, AXIS_WIDTH/8, 0}, 0);
    tready = xfix({xlUnsigned, 1, 0}, 0);
    trigger_out = false;
    last_frame_out = false;
    
else %No reset
    %Incoming trigger
    if(trigger_in == xfix({xlBoolean, 1, 0},1)) && (triggered == xfix({xlBoolean, 1, 0},false)) 
        triggered = true;
    end
    
    for i=(RDY_DELAY_STAGES-1):-1:1
        delayed_ready(i) = delayed_ready(i-1);
    end
    delayed_ready(0) = tready_in;
    
    %ready_sig = xl_and(delayed_ready(0), delayed_ready(1));
    ready_sig = xl_and(delayed_ready(0), delayed_ready(1),delayed_ready(2),delayed_ready(3),delayed_ready(4));
    %Advance parsing data if downstream cores are ready
    if(xl_and(triggered, ready_sig))
        
        tready = 1;
        
        if(decim_count == decim_val)
            frame_count = frame_count+1;
            muxing_run = true;    
            data_vec_store(0) = xl_slice(data_vec,AXIS_WIDTH-1,0);
            data_vec_store(1) = xl_slice(data_vec,(2*AXIS_WIDTH)-1,1*AXIS_WIDTH);
            data_vec_store(2) = xl_slice(data_vec,(3*AXIS_WIDTH)-1,2*AXIS_WIDTH);
            data_vec_store(3) = xl_slice(data_vec,(4*AXIS_WIDTH)-1,3*AXIS_WIDTH);
            data_vec_store(4) = xl_slice(data_vec,(5*AXIS_WIDTH)-1,4*AXIS_WIDTH);
            data_vec_store(5) = xl_slice(data_vec,(6*AXIS_WIDTH)-1,5*AXIS_WIDTH);
            data_vec_store(6) = xl_slice(data_vec,(7*AXIS_WIDTH)-1,6*AXIS_WIDTH);
            data_vec_store(7) = xl_slice(data_vec,(8*AXIS_WIDTH)-1,7*AXIS_WIDTH);
            data_sel_store = data_sel;

            if(frame_count == frames_val)
                frame_count = 0;
                last_frame_flag = true;
                
            end
%             disp('Decim count reached');
%             disp(frame_count);
%             disp(last_frame_flag);
%             disp(data_sel_store);
            decim_count = 0;   
        else
            decim_count = decim_count+1;
        end

        if(muxing_run == true)
            %tdata = xl_slice(data_vec_store,data_idx*AXIS_WIDTH,((data_idx+1)*AXIS_WIDTH-1));
            if (xl_slice(data_sel_store,0,0) == xfix({xlUnsigned, 1, 0},1))
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(0));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 1))); 
            elseif (xl_slice(data_sel_store,1,0) == 2)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0},  data_vec_store(1));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 3)));
            elseif (xl_slice(data_sel_store,2,0) == 4)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(2));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 7)));
            elseif (xl_slice(data_sel_store,3,0) == 8)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(3));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 15)));
            elseif (xl_slice(data_sel_store,4,0) == 16)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(4));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 31)));
            elseif (xl_slice(data_sel_store,5,0) == 32)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(5));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 63)));
            elseif (xl_slice(data_sel_store,6,0) == 64)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(6));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 127)));
            elseif (xl_slice(data_sel_store,7,0) == 128)
                tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, data_vec_store(7));
                data_sel_store = xl_and(data_sel_store, xl_not(xfix({xlUnsigned, NO_CHANNELS, 0}, 255)));
            else
                tdata_temp = 0;
            end
            
            % Output tlast if last frame and all channels were sent
            if(data_sel_store == 0)
                mux_count = 0;
                muxing_run = false;
                
                if((last_frame_flag == true))
                    tlast_temp = 1;
                    last_frame_flag = false;
                    triggered = false;
                    tlast_fifo(0) = tlast_temp;
                else
                    tlast_temp = 0;
                end
            else
                mux_count = mux_count + 1;
                tlast_temp = 0;
            end
            tvalid_temp = 1;
        else
            tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, 0);
            tvalid_temp = 0;
            tlast_temp = xfix({xlUnsigned, 1, 0}, 0);
        end 
        
        tkeep = xl_not(xfix({xlUnsigned, AXIS_WIDTH/8, 0}, 0)); %0b1111
        trigger_out = triggered;
        
    else %No trigger or downstream cores arent ready
        tdata_temp = xfix({xlUnsigned, AXIS_WIDTH, 0}, 0);
        tkeep = xfix({xlUnsigned, AXIS_WIDTH/8, 0}, 0);
        tready = xfix({xlUnsigned, 1, 0}, 0);
        trigger_out = false;
        tvalid_temp = xfix({xlUnsigned, 1, 0}, 0);
        tlast_temp = xfix({xlUnsigned, 1, 0}, 0);
    end
    
    tdata = tdata_temp;
%     tvalid = xl_or(tvalid_temp,tlast_fifo(0));
%     tlast = xl_or(tlast_temp,tlast_fifo(0));
    tvalid = tvalid_temp;
    tlast = tlast_temp;
    
    if xl_and((tlast_fifo(0) == 1), (delayed_ready(1) == true)) %% tlast was received
        tlast_fifo(0) = 0;
    end
        
    
%     if(tready_in)
%         tdata = tdata_fifo.back;
%         tvalid = tvalid_fifo.back;
%         tlast = tlast_fifo.back;
%         tdata_fifo.push_front_pop_back(tdata_temp);
%         tvalid_fifo.push_front_pop_back(tvalid_temp);
%         tlast_fifo.push_front_pop_back(tlast_temp);
%     else
%         tdata = xfix({xlUnsigned, AXIS_WIDTH, 0}, 0);
%         tvalid = xfix({xlUnsigned, 1, 0}, 0);
%         tlast = xfix({xlUnsigned, 1, 0}, 0);
%     end
    
end
    last_frame_out = last_frame_flag;
    dec_cnt_out = decim_count;
    frame_cnt_out = frame_count;
    mux_cnt_out = mux_count;
    data_sel_out = data_sel_store;

end

