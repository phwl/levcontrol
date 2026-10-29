# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in the Vitis Model Composer Hub block. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg400}
	set DSPSpeed {-1}
	set FPGAClockPeriod 8
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {/home/user/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {Thrtl_8ch_cfg}
	set IP_Revision {400518786}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {thrtl_8ch_cfg}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{thrtl_8ch_cfg.mdd}}
		{{thrtl_8ch_cfg_hw.h}}
		{{thrtl_8ch_cfg.h}}
		{{thrtl_8ch_cfg_sinit.c}}
		{{thrtl_8ch_cfg.c}}
		{{thrtl_8ch_cfg_linux.c}}
		{{thrtl_8ch_cfg.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
		{{thrtl_8ch_cfg_entity_declarations.v}}
		{{thrtl_8ch_cfg.v}}
		{{thrtl_8ch_cfg_clock.xdc}}
		{{thrtl_8ch_cfg.xdc}}
	}
	set SimPeriod 8e-09
	set SimTime 2.4e-06
	set SimulationTime {2608.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/user/host_home/work/acin/projects/universal_lqg/lqg-fp7-firmware/dma_throttle/netlist/ip/Thrtl_8ch_cfg/src}
	set TopLevelModule {thrtl_8ch_cfg}
	set TopLevelSimulinkHandle 428
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface trigger_in_hw Name {trigger_in_hw}
	dict set TopLevelPortInterface trigger_in_hw Type Bool
	dict set TopLevelPortInterface trigger_in_hw ArithmeticType xlUnsigned
	dict set TopLevelPortInterface trigger_in_hw BinaryPoint 0
	dict set TopLevelPortInterface trigger_in_hw Width 1
	dict set TopLevelPortInterface trigger_in_hw DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_trigger_in_hw.dat}
	dict set TopLevelPortInterface trigger_in_hw IconText {trigger_in_hw}
	dict set TopLevelPortInterface trigger_in_hw Direction in
	dict set TopLevelPortInterface trigger_in_hw Period 1
	dict set TopLevelPortInterface trigger_in_hw Interface 0
	dict set TopLevelPortInterface trigger_in_hw InterfaceName {}
	dict set TopLevelPortInterface trigger_in_hw InterfaceString {DATA}
	dict set TopLevelPortInterface trigger_in_hw ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface trigger_in_hw Locs {}
	dict set TopLevelPortInterface trigger_in_hw IOStandard {}
	dict set TopLevelPortInterface m_axis_dma_tready Name {m_axis_dma_tready}
	dict set TopLevelPortInterface m_axis_dma_tready Type Bool
	dict set TopLevelPortInterface m_axis_dma_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_dma_tready BinaryPoint 0
	dict set TopLevelPortInterface m_axis_dma_tready Width 1
	dict set TopLevelPortInterface m_axis_dma_tready DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_m_axis_dma_tready.dat}
	dict set TopLevelPortInterface m_axis_dma_tready IconText {m_axis_dma_tready}
	dict set TopLevelPortInterface m_axis_dma_tready Direction in
	dict set TopLevelPortInterface m_axis_dma_tready Period 1
	dict set TopLevelPortInterface m_axis_dma_tready Interface 0
	dict set TopLevelPortInterface m_axis_dma_tready InterfaceName {}
	dict set TopLevelPortInterface m_axis_dma_tready InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_dma_tready ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface m_axis_dma_tready Locs {}
	dict set TopLevelPortInterface m_axis_dma_tready IOStandard {}
	dict set TopLevelPortInterface data_in_h Name {data_in_h}
	dict set TopLevelPortInterface data_in_h Type UFix_32_0
	dict set TopLevelPortInterface data_in_h ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_h BinaryPoint 0
	dict set TopLevelPortInterface data_in_h Width 32
	dict set TopLevelPortInterface data_in_h DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_h.dat}
	dict set TopLevelPortInterface data_in_h IconText {data_in_h}
	dict set TopLevelPortInterface data_in_h Direction in
	dict set TopLevelPortInterface data_in_h Period 1
	dict set TopLevelPortInterface data_in_h Interface 0
	dict set TopLevelPortInterface data_in_h InterfaceName {}
	dict set TopLevelPortInterface data_in_h InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_h ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_h Locs {}
	dict set TopLevelPortInterface data_in_h IOStandard {}
	dict set TopLevelPortInterface data_in_g Name {data_in_g}
	dict set TopLevelPortInterface data_in_g Type UFix_32_0
	dict set TopLevelPortInterface data_in_g ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_g BinaryPoint 0
	dict set TopLevelPortInterface data_in_g Width 32
	dict set TopLevelPortInterface data_in_g DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_g.dat}
	dict set TopLevelPortInterface data_in_g IconText {data_in_g}
	dict set TopLevelPortInterface data_in_g Direction in
	dict set TopLevelPortInterface data_in_g Period 1
	dict set TopLevelPortInterface data_in_g Interface 0
	dict set TopLevelPortInterface data_in_g InterfaceName {}
	dict set TopLevelPortInterface data_in_g InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_g ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_g Locs {}
	dict set TopLevelPortInterface data_in_g IOStandard {}
	dict set TopLevelPortInterface data_in_f Name {data_in_f}
	dict set TopLevelPortInterface data_in_f Type UFix_32_0
	dict set TopLevelPortInterface data_in_f ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_f BinaryPoint 0
	dict set TopLevelPortInterface data_in_f Width 32
	dict set TopLevelPortInterface data_in_f DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_f.dat}
	dict set TopLevelPortInterface data_in_f IconText {data_in_f}
	dict set TopLevelPortInterface data_in_f Direction in
	dict set TopLevelPortInterface data_in_f Period 1
	dict set TopLevelPortInterface data_in_f Interface 0
	dict set TopLevelPortInterface data_in_f InterfaceName {}
	dict set TopLevelPortInterface data_in_f InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_f ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_f Locs {}
	dict set TopLevelPortInterface data_in_f IOStandard {}
	dict set TopLevelPortInterface data_in_e Name {data_in_e}
	dict set TopLevelPortInterface data_in_e Type UFix_32_0
	dict set TopLevelPortInterface data_in_e ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_e BinaryPoint 0
	dict set TopLevelPortInterface data_in_e Width 32
	dict set TopLevelPortInterface data_in_e DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_e.dat}
	dict set TopLevelPortInterface data_in_e IconText {data_in_e}
	dict set TopLevelPortInterface data_in_e Direction in
	dict set TopLevelPortInterface data_in_e Period 1
	dict set TopLevelPortInterface data_in_e Interface 0
	dict set TopLevelPortInterface data_in_e InterfaceName {}
	dict set TopLevelPortInterface data_in_e InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_e ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_e Locs {}
	dict set TopLevelPortInterface data_in_e IOStandard {}
	dict set TopLevelPortInterface data_in_d Name {data_in_d}
	dict set TopLevelPortInterface data_in_d Type UFix_32_0
	dict set TopLevelPortInterface data_in_d ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_d BinaryPoint 0
	dict set TopLevelPortInterface data_in_d Width 32
	dict set TopLevelPortInterface data_in_d DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_d.dat}
	dict set TopLevelPortInterface data_in_d IconText {data_in_d}
	dict set TopLevelPortInterface data_in_d Direction in
	dict set TopLevelPortInterface data_in_d Period 1
	dict set TopLevelPortInterface data_in_d Interface 0
	dict set TopLevelPortInterface data_in_d InterfaceName {}
	dict set TopLevelPortInterface data_in_d InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_d ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_d Locs {}
	dict set TopLevelPortInterface data_in_d IOStandard {}
	dict set TopLevelPortInterface data_in_c Name {data_in_c}
	dict set TopLevelPortInterface data_in_c Type UFix_32_0
	dict set TopLevelPortInterface data_in_c ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_c BinaryPoint 0
	dict set TopLevelPortInterface data_in_c Width 32
	dict set TopLevelPortInterface data_in_c DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_c.dat}
	dict set TopLevelPortInterface data_in_c IconText {data_in_c}
	dict set TopLevelPortInterface data_in_c Direction in
	dict set TopLevelPortInterface data_in_c Period 1
	dict set TopLevelPortInterface data_in_c Interface 0
	dict set TopLevelPortInterface data_in_c InterfaceName {}
	dict set TopLevelPortInterface data_in_c InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_c ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_c Locs {}
	dict set TopLevelPortInterface data_in_c IOStandard {}
	dict set TopLevelPortInterface data_in_b Name {data_in_b}
	dict set TopLevelPortInterface data_in_b Type UFix_32_0
	dict set TopLevelPortInterface data_in_b ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_b BinaryPoint 0
	dict set TopLevelPortInterface data_in_b Width 32
	dict set TopLevelPortInterface data_in_b DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_b.dat}
	dict set TopLevelPortInterface data_in_b IconText {data_in_b}
	dict set TopLevelPortInterface data_in_b Direction in
	dict set TopLevelPortInterface data_in_b Period 1
	dict set TopLevelPortInterface data_in_b Interface 0
	dict set TopLevelPortInterface data_in_b InterfaceName {}
	dict set TopLevelPortInterface data_in_b InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_b ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_b Locs {}
	dict set TopLevelPortInterface data_in_b IOStandard {}
	dict set TopLevelPortInterface data_in_a Name {data_in_a}
	dict set TopLevelPortInterface data_in_a Type UFix_32_0
	dict set TopLevelPortInterface data_in_a ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in_a BinaryPoint 0
	dict set TopLevelPortInterface data_in_a Width 32
	dict set TopLevelPortInterface data_in_a DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_in_a.dat}
	dict set TopLevelPortInterface data_in_a IconText {data_in_a}
	dict set TopLevelPortInterface data_in_a Direction in
	dict set TopLevelPortInterface data_in_a Period 1
	dict set TopLevelPortInterface data_in_a Interface 0
	dict set TopLevelPortInterface data_in_a InterfaceName {}
	dict set TopLevelPortInterface data_in_a InterfaceString {DATA}
	dict set TopLevelPortInterface data_in_a ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface data_in_a Locs {}
	dict set TopLevelPortInterface data_in_a IOStandard {}
	dict set TopLevelPortInterface dma_ready_out Name {dma_ready_out}
	dict set TopLevelPortInterface dma_ready_out Type UFix_1_0
	dict set TopLevelPortInterface dma_ready_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dma_ready_out BinaryPoint 0
	dict set TopLevelPortInterface dma_ready_out Width 1
	dict set TopLevelPortInterface dma_ready_out DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_dma_ready_out.dat}
	dict set TopLevelPortInterface dma_ready_out IconText {dma_ready_out}
	dict set TopLevelPortInterface dma_ready_out Direction out
	dict set TopLevelPortInterface dma_ready_out Period 1
	dict set TopLevelPortInterface dma_ready_out Interface 0
	dict set TopLevelPortInterface dma_ready_out InterfaceName {}
	dict set TopLevelPortInterface dma_ready_out InterfaceString {DATA}
	dict set TopLevelPortInterface dma_ready_out ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface dma_ready_out Locs {}
	dict set TopLevelPortInterface dma_ready_out IOStandard {}
	dict set TopLevelPortInterface m_axis_dma_tdata Name {m_axis_dma_tdata}
	dict set TopLevelPortInterface m_axis_dma_tdata Type UFix_32_0
	dict set TopLevelPortInterface m_axis_dma_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_dma_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_axis_dma_tdata Width 32
	dict set TopLevelPortInterface m_axis_dma_tdata DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_m_axis_dma_tdata.dat}
	dict set TopLevelPortInterface m_axis_dma_tdata IconText {m_axis_dma_tdata}
	dict set TopLevelPortInterface m_axis_dma_tdata Direction out
	dict set TopLevelPortInterface m_axis_dma_tdata Period 1
	dict set TopLevelPortInterface m_axis_dma_tdata Interface 0
	dict set TopLevelPortInterface m_axis_dma_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_dma_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_dma_tdata ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface m_axis_dma_tdata Locs {}
	dict set TopLevelPortInterface m_axis_dma_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_dma_tkeep Name {m_axis_dma_tkeep}
	dict set TopLevelPortInterface m_axis_dma_tkeep Type UFix_4_0
	dict set TopLevelPortInterface m_axis_dma_tkeep ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_dma_tkeep BinaryPoint 0
	dict set TopLevelPortInterface m_axis_dma_tkeep Width 4
	dict set TopLevelPortInterface m_axis_dma_tkeep DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_m_axis_dma_tkeep.dat}
	dict set TopLevelPortInterface m_axis_dma_tkeep IconText {m_axis_dma_tkeep}
	dict set TopLevelPortInterface m_axis_dma_tkeep Direction out
	dict set TopLevelPortInterface m_axis_dma_tkeep Period 1
	dict set TopLevelPortInterface m_axis_dma_tkeep Interface 0
	dict set TopLevelPortInterface m_axis_dma_tkeep InterfaceName {}
	dict set TopLevelPortInterface m_axis_dma_tkeep InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_dma_tkeep ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface m_axis_dma_tkeep Locs {}
	dict set TopLevelPortInterface m_axis_dma_tkeep IOStandard {}
	dict set TopLevelPortInterface m_axis_dma_tlast Name {m_axis_dma_tlast}
	dict set TopLevelPortInterface m_axis_dma_tlast Type UFix_1_0
	dict set TopLevelPortInterface m_axis_dma_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_dma_tlast BinaryPoint 0
	dict set TopLevelPortInterface m_axis_dma_tlast Width 1
	dict set TopLevelPortInterface m_axis_dma_tlast DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_m_axis_dma_tlast.dat}
	dict set TopLevelPortInterface m_axis_dma_tlast IconText {m_axis_dma_tlast}
	dict set TopLevelPortInterface m_axis_dma_tlast Direction out
	dict set TopLevelPortInterface m_axis_dma_tlast Period 1
	dict set TopLevelPortInterface m_axis_dma_tlast Interface 0
	dict set TopLevelPortInterface m_axis_dma_tlast InterfaceName {}
	dict set TopLevelPortInterface m_axis_dma_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_dma_tlast ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface m_axis_dma_tlast Locs {}
	dict set TopLevelPortInterface m_axis_dma_tlast IOStandard {}
	dict set TopLevelPortInterface m_axis_dma_tvalid Name {m_axis_dma_tvalid}
	dict set TopLevelPortInterface m_axis_dma_tvalid Type UFix_1_0
	dict set TopLevelPortInterface m_axis_dma_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_dma_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_dma_tvalid Width 1
	dict set TopLevelPortInterface m_axis_dma_tvalid DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_m_axis_dma_tvalid.dat}
	dict set TopLevelPortInterface m_axis_dma_tvalid IconText {m_axis_dma_tvalid}
	dict set TopLevelPortInterface m_axis_dma_tvalid Direction out
	dict set TopLevelPortInterface m_axis_dma_tvalid Period 1
	dict set TopLevelPortInterface m_axis_dma_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_dma_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_dma_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_dma_tvalid ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface m_axis_dma_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_dma_tvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Name {thrtl_8ch_cfg_aresetn}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn IconText {thrtl_8ch_cfg_aresetn}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Interface 8
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_aresetn IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Name {thrtl_8ch_cfg_cfg_in_s_axi_awaddr}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Width 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr IconText {thrtl_8ch_cfg_cfg_in_s_axi_awaddr}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Name {thrtl_8ch_cfg_cfg_in_s_axi_awvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid IconText {thrtl_8ch_cfg_cfg_in_s_axi_awvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Name {thrtl_8ch_cfg_cfg_in_s_axi_awready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready IconText {thrtl_8ch_cfg_cfg_in_s_axi_awready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Name {thrtl_8ch_cfg_cfg_in_s_axi_wdata}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Width 32
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata IconText {thrtl_8ch_cfg_cfg_in_s_axi_wdata}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Name {thrtl_8ch_cfg_cfg_in_s_axi_wstrb}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Width 4
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb IconText {thrtl_8ch_cfg_cfg_in_s_axi_wstrb}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Name {thrtl_8ch_cfg_cfg_in_s_axi_wvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid IconText {thrtl_8ch_cfg_cfg_in_s_axi_wvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Name {thrtl_8ch_cfg_cfg_in_s_axi_wready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready IconText {thrtl_8ch_cfg_cfg_in_s_axi_wready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Name {thrtl_8ch_cfg_cfg_in_s_axi_bresp}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Width 2
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp IconText {thrtl_8ch_cfg_cfg_in_s_axi_bresp}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Name {thrtl_8ch_cfg_cfg_in_s_axi_bvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid IconText {thrtl_8ch_cfg_cfg_in_s_axi_bvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Name {thrtl_8ch_cfg_cfg_in_s_axi_bready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready IconText {thrtl_8ch_cfg_cfg_in_s_axi_bready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Name {thrtl_8ch_cfg_cfg_in_s_axi_araddr}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Width 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr IconText {thrtl_8ch_cfg_cfg_in_s_axi_araddr}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Name {thrtl_8ch_cfg_cfg_in_s_axi_arvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid IconText {thrtl_8ch_cfg_cfg_in_s_axi_arvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Name {thrtl_8ch_cfg_cfg_in_s_axi_arready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready IconText {thrtl_8ch_cfg_cfg_in_s_axi_arready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Name {thrtl_8ch_cfg_cfg_in_s_axi_rdata}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Width 32
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata IconText {thrtl_8ch_cfg_cfg_in_s_axi_rdata}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Name {thrtl_8ch_cfg_cfg_in_s_axi_rresp}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Width 2
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp IconText {thrtl_8ch_cfg_cfg_in_s_axi_rresp}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Name {thrtl_8ch_cfg_cfg_in_s_axi_rvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid IconText {thrtl_8ch_cfg_cfg_in_s_axi_rvalid}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Direction out
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Name {thrtl_8ch_cfg_cfg_in_s_axi_rready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Type -
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Width 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready DatFile {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready IconText {thrtl_8ch_cfg_cfg_in_s_axi_rready}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Direction in
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Period 1
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Interface 5
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready Locs {}
	dict set TopLevelPortInterface thrtl_8ch_cfg_cfg_in_s_axi_rready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {thrtl_8ch_cfg}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {thrtl_8ch_cfg_cfg_in_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {thrtl_8ch_cfg_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort usr_rst_in Name {usr_rst_in}
	dict set MemoryMappedPort usr_rst_in Type Bool
	dict set MemoryMappedPort usr_rst_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort usr_rst_in BinaryPoint 0
	dict set MemoryMappedPort usr_rst_in Width 1
	dict set MemoryMappedPort usr_rst_in DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_usr_rst_in.dat}
	dict set MemoryMappedPort usr_rst_in AddressOffset 4
	dict set MemoryMappedPort usr_rst_in IconText {usr_rst_in}
	dict set MemoryMappedPort usr_rst_in Direction in
	dict set MemoryMappedPort usr_rst_in Period 1
	dict set MemoryMappedPort usr_rst_in Interface 2
	dict set MemoryMappedPort usr_rst_in InterfaceName {cfg_in}
	dict set MemoryMappedPort usr_rst_in InterfaceString {CONTROL}
	dict set MemoryMappedPort usr_rst_in ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort usr_rst_in Locs {}
	dict set MemoryMappedPort usr_rst_in IOStandard {}
	dict set MemoryMappedPort trigger_src Name {trigger_src}
	dict set MemoryMappedPort trigger_src Type Bool
	dict set MemoryMappedPort trigger_src ArithmeticType xlUnsigned
	dict set MemoryMappedPort trigger_src BinaryPoint 0
	dict set MemoryMappedPort trigger_src Width 1
	dict set MemoryMappedPort trigger_src DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_trigger_src.dat}
	dict set MemoryMappedPort trigger_src AddressOffset 16
	dict set MemoryMappedPort trigger_src IconText {trigger_src}
	dict set MemoryMappedPort trigger_src Direction in
	dict set MemoryMappedPort trigger_src Period 1
	dict set MemoryMappedPort trigger_src Interface 2
	dict set MemoryMappedPort trigger_src InterfaceName {cfg_in}
	dict set MemoryMappedPort trigger_src InterfaceString {CONTROL}
	dict set MemoryMappedPort trigger_src ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort trigger_src Locs {}
	dict set MemoryMappedPort trigger_src IOStandard {}
	dict set MemoryMappedPort trigger_in Name {trigger_in}
	dict set MemoryMappedPort trigger_in Type Bool
	dict set MemoryMappedPort trigger_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort trigger_in BinaryPoint 0
	dict set MemoryMappedPort trigger_in Width 1
	dict set MemoryMappedPort trigger_in DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_trigger_in.dat}
	dict set MemoryMappedPort trigger_in AddressOffset 0
	dict set MemoryMappedPort trigger_in IconText {trigger_in}
	dict set MemoryMappedPort trigger_in Direction in
	dict set MemoryMappedPort trigger_in Period 1
	dict set MemoryMappedPort trigger_in Interface 2
	dict set MemoryMappedPort trigger_in InterfaceName {cfg_in}
	dict set MemoryMappedPort trigger_in InterfaceString {CONTROL}
	dict set MemoryMappedPort trigger_in ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort trigger_in Locs {}
	dict set MemoryMappedPort trigger_in IOStandard {}
	dict set MemoryMappedPort frames_no_in Name {frames_no_in}
	dict set MemoryMappedPort frames_no_in Type UFix_32_0
	dict set MemoryMappedPort frames_no_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort frames_no_in BinaryPoint 0
	dict set MemoryMappedPort frames_no_in Width 32
	dict set MemoryMappedPort frames_no_in DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_frames_no_in.dat}
	dict set MemoryMappedPort frames_no_in AddressOffset 8
	dict set MemoryMappedPort frames_no_in IconText {frames_no_in}
	dict set MemoryMappedPort frames_no_in Direction in
	dict set MemoryMappedPort frames_no_in Period 1
	dict set MemoryMappedPort frames_no_in Interface 2
	dict set MemoryMappedPort frames_no_in InterfaceName {cfg_in}
	dict set MemoryMappedPort frames_no_in InterfaceString {CONTROL}
	dict set MemoryMappedPort frames_no_in ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort frames_no_in Locs {}
	dict set MemoryMappedPort frames_no_in IOStandard {}
	dict set MemoryMappedPort decim_in Name {decim_in}
	dict set MemoryMappedPort decim_in Type UFix_16_0
	dict set MemoryMappedPort decim_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort decim_in BinaryPoint 0
	dict set MemoryMappedPort decim_in Width 16
	dict set MemoryMappedPort decim_in DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_decim_in.dat}
	dict set MemoryMappedPort decim_in AddressOffset 12
	dict set MemoryMappedPort decim_in IconText {decim_in}
	dict set MemoryMappedPort decim_in Direction in
	dict set MemoryMappedPort decim_in Period 1
	dict set MemoryMappedPort decim_in Interface 2
	dict set MemoryMappedPort decim_in InterfaceName {cfg_in}
	dict set MemoryMappedPort decim_in InterfaceString {CONTROL}
	dict set MemoryMappedPort decim_in ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort decim_in Locs {}
	dict set MemoryMappedPort decim_in IOStandard {}
	dict set MemoryMappedPort data_sel_in Name {data_sel_in}
	dict set MemoryMappedPort data_sel_in Type UFix_8_0
	dict set MemoryMappedPort data_sel_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort data_sel_in BinaryPoint 0
	dict set MemoryMappedPort data_sel_in Width 8
	dict set MemoryMappedPort data_sel_in DatFile {dma_throttle_sysgen_configurable_24a_thrtl_8ch_cfg_data_sel_in.dat}
	dict set MemoryMappedPort data_sel_in AddressOffset 20
	dict set MemoryMappedPort data_sel_in IconText {data_sel_in}
	dict set MemoryMappedPort data_sel_in Direction in
	dict set MemoryMappedPort data_sel_in Period 1
	dict set MemoryMappedPort data_sel_in Interface 2
	dict set MemoryMappedPort data_sel_in InterfaceName {cfg_in}
	dict set MemoryMappedPort data_sel_in InterfaceString {CONTROL}
	dict set MemoryMappedPort data_sel_in ClockDomain {thrtl_8ch_cfg}
	dict set MemoryMappedPort data_sel_in Locs {}
	dict set MemoryMappedPort data_sel_in IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project