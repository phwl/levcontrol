function HWRecordIdxs = get_dma_channel_idxs(usrRecordFlags)
            % This assumes the order of recordFlags [ADCs; DACs; States]
            % | DMA Channel | Bit Range | Source Signal        |
            % | ----------- | --------- | -------------------- |
            % | **A**       | `[13:0]`  | `lqg_uk_0[13:0]`     |
            % |             | `[27:14]` | `lqg_uk_1[13:0]`     |
            % |             | `[31:28]` | `lqg_yk_0[3:0]`      |

            % | **B**       | `[9:0]`   | `lqg_yk_0[13:4]`     |
            % |             | `[23:10]` | `lqg_yk_1[13:0]`     |
            % |             | `[31:24]` | `lqg_xkhat_0[7:0]`   |

            % | **C**       | `[16:0]`  | `lqg_xkhat_0[24:8]`  |
            % |             | `[31:17]` | `lqg_xkhat_1[14:0]`  |

            % | **D**       | `[9:0]`   | `lqg_xkhat_1[24:15]` |
            % |             | `[31:10]` | `lqg_xkhat_2[21:0]`  |

            % | **E**       | `[2:0]`   | `lqg_xkhat_2[24:22]` |
            % |             | `[27:3]`  | `lqg_xkhat_3[24:0]`  |
            % |             | `[31:28]` | `lqg_xkhat_4[3:0]`   |

            % | **F**       | `[20:0]`  | `lqg_xkhat_4[24:4]`  |
            % |             | `[31:21]` | `lqg_xkhat_5[10:0]`  |

            % | **G**       | `[13:0]`  | `lqg_xkhat_5[24:11]` |
            % |             | `[31:14]` | `lqg_xkhat_6[17:0]`  |
            
            % | **H**       | `[6:0]`   | `lqg_xkhat_6[24:18]` |
            
            containedInChannels = { [1, 2],...
                                    [2],...
                                    [1],...
                                    [1],...
                                    [2, 3],...
                                    [3, 4],...
                                    [4, 5],...
                                    [5],...
                                    [5, 6],...
                                    [6, 7],...
                                    [7, 8]};

            HWRecordIdxs = unique(horzcat(containedInChannels{usrRecordFlags}));
        end