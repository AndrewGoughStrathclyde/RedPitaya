//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Nov 20 16:31:41 2018
//Host        : eee-cmp-52 running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (ARM_GIC_ID_61,
    ARM_GIC_ID_62,
    ARM_GIC_ID_63,
    ARM_GIC_ID_64,
    ARM_GIC_ID_65,
    ARM_GIC_ID_66,
    ARM_GIC_ID_67,
    ARM_GIC_ID_68,
    ARM_GIC_ID_84,
    ARM_GIC_ID_85,
    ARM_GIC_ID_86,
    ARM_GIC_ID_87,
    ARM_GIC_ID_88,
    ARM_GIC_ID_89,
    ARM_GIC_ID_90,
    ARM_GIC_ID_91,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK0,
    FCLK_CLK1,
    FCLK_CLK2,
    FCLK_CLK3,
    FCLK_RESET0_N,
    FCLK_RESET1_N,
    FCLK_RESET2_N,
    FCLK_RESET3_N,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M_AXI_GP0_araddr,
    M_AXI_GP0_arburst,
    M_AXI_GP0_arcache,
    M_AXI_GP0_arid,
    M_AXI_GP0_arlen,
    M_AXI_GP0_arlock,
    M_AXI_GP0_arprot,
    M_AXI_GP0_arqos,
    M_AXI_GP0_arready,
    M_AXI_GP0_arsize,
    M_AXI_GP0_arvalid,
    M_AXI_GP0_awaddr,
    M_AXI_GP0_awburst,
    M_AXI_GP0_awcache,
    M_AXI_GP0_awid,
    M_AXI_GP0_awlen,
    M_AXI_GP0_awlock,
    M_AXI_GP0_awprot,
    M_AXI_GP0_awqos,
    M_AXI_GP0_awready,
    M_AXI_GP0_awsize,
    M_AXI_GP0_awvalid,
    M_AXI_GP0_bid,
    M_AXI_GP0_bready,
    M_AXI_GP0_bresp,
    M_AXI_GP0_bvalid,
    M_AXI_GP0_rdata,
    M_AXI_GP0_rid,
    M_AXI_GP0_rlast,
    M_AXI_GP0_rready,
    M_AXI_GP0_rresp,
    M_AXI_GP0_rvalid,
    M_AXI_GP0_wdata,
    M_AXI_GP0_wid,
    M_AXI_GP0_wlast,
    M_AXI_GP0_wready,
    M_AXI_GP0_wstrb,
    M_AXI_GP0_wvalid,
    SPI0_MISO_I,
    SPI0_MISO_O,
    SPI0_MISO_T,
    SPI0_MOSI_I,
    SPI0_MOSI_O,
    SPI0_MOSI_T,
    SPI0_SCLK_I,
    SPI0_SCLK_O,
    SPI0_SCLK_T,
    SPI0_SS1_O,
    SPI0_SS2_O,
    SPI0_SS_I,
    SPI0_SS_O,
    SPI0_SS_T,
    S_AXI_HP0_araddr,
    S_AXI_HP0_arburst,
    S_AXI_HP0_arcache,
    S_AXI_HP0_arid,
    S_AXI_HP0_arlen,
    S_AXI_HP0_arlock,
    S_AXI_HP0_arprot,
    S_AXI_HP0_arqos,
    S_AXI_HP0_arready,
    S_AXI_HP0_arsize,
    S_AXI_HP0_arvalid,
    S_AXI_HP0_awaddr,
    S_AXI_HP0_awburst,
    S_AXI_HP0_awcache,
    S_AXI_HP0_awid,
    S_AXI_HP0_awlen,
    S_AXI_HP0_awlock,
    S_AXI_HP0_awprot,
    S_AXI_HP0_awqos,
    S_AXI_HP0_awready,
    S_AXI_HP0_awsize,
    S_AXI_HP0_awvalid,
    S_AXI_HP0_bid,
    S_AXI_HP0_bready,
    S_AXI_HP0_bresp,
    S_AXI_HP0_bvalid,
    S_AXI_HP0_rdata,
    S_AXI_HP0_rid,
    S_AXI_HP0_rlast,
    S_AXI_HP0_rready,
    S_AXI_HP0_rresp,
    S_AXI_HP0_rvalid,
    S_AXI_HP0_wdata,
    S_AXI_HP0_wid,
    S_AXI_HP0_wlast,
    S_AXI_HP0_wready,
    S_AXI_HP0_wstrb,
    S_AXI_HP0_wvalid);
  input [0:0]ARM_GIC_ID_61;
  input [0:0]ARM_GIC_ID_62;
  input [0:0]ARM_GIC_ID_63;
  input [0:0]ARM_GIC_ID_64;
  input [0:0]ARM_GIC_ID_65;
  input [0:0]ARM_GIC_ID_66;
  input [0:0]ARM_GIC_ID_67;
  input [0:0]ARM_GIC_ID_68;
  input [0:0]ARM_GIC_ID_84;
  input [0:0]ARM_GIC_ID_85;
  input [0:0]ARM_GIC_ID_86;
  input [0:0]ARM_GIC_ID_87;
  input [0:0]ARM_GIC_ID_88;
  input [0:0]ARM_GIC_ID_89;
  input [0:0]ARM_GIC_ID_90;
  input [0:0]ARM_GIC_ID_91;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK_CLK0, ASSOCIATED_BUSIF M_AXI_GP0:S_AXI_HP0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 125000000, PHASE 0.000" *) output FCLK_CLK0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK_CLK1, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, FREQ_HZ 250000000, PHASE 0.000" *) output FCLK_CLK1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK_CLK2, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK2, FREQ_HZ 50000000, PHASE 0.000" *) output FCLK_CLK2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FCLK_CLK3 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FCLK_CLK3, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK3, FREQ_HZ 200000000, PHASE 0.000" *) output FCLK_CLK3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.FCLK_RESET0_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.FCLK_RESET0_N, POLARITY ACTIVE_LOW" *) output FCLK_RESET0_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.FCLK_RESET1_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.FCLK_RESET1_N, POLARITY ACTIVE_LOW" *) output FCLK_RESET1_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.FCLK_RESET2_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.FCLK_RESET2_N, POLARITY ACTIVE_LOW" *) output FCLK_RESET2_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.FCLK_RESET3_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.FCLK_RESET3_N, POLARITY ACTIVE_LOW" *) output FCLK_RESET3_N;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_GP0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 12, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_GP0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARBURST" *) output [1:0]M_AXI_GP0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARCACHE" *) output [3:0]M_AXI_GP0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARID" *) output [11:0]M_AXI_GP0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARLEN" *) output [3:0]M_AXI_GP0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARLOCK" *) output [1:0]M_AXI_GP0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARPROT" *) output [2:0]M_AXI_GP0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARQOS" *) output [3:0]M_AXI_GP0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARREADY" *) input M_AXI_GP0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARSIZE" *) output [2:0]M_AXI_GP0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARVALID" *) output M_AXI_GP0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWADDR" *) output [31:0]M_AXI_GP0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWBURST" *) output [1:0]M_AXI_GP0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWCACHE" *) output [3:0]M_AXI_GP0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWID" *) output [11:0]M_AXI_GP0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWLEN" *) output [3:0]M_AXI_GP0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWLOCK" *) output [1:0]M_AXI_GP0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWPROT" *) output [2:0]M_AXI_GP0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWQOS" *) output [3:0]M_AXI_GP0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWREADY" *) input M_AXI_GP0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWSIZE" *) output [2:0]M_AXI_GP0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWVALID" *) output M_AXI_GP0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BID" *) input [11:0]M_AXI_GP0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BREADY" *) output M_AXI_GP0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BRESP" *) input [1:0]M_AXI_GP0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BVALID" *) input M_AXI_GP0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RDATA" *) input [31:0]M_AXI_GP0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RID" *) input [11:0]M_AXI_GP0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RLAST" *) input M_AXI_GP0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RREADY" *) output M_AXI_GP0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RRESP" *) input [1:0]M_AXI_GP0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RVALID" *) input M_AXI_GP0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WDATA" *) output [31:0]M_AXI_GP0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WID" *) output [11:0]M_AXI_GP0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WLAST" *) output M_AXI_GP0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WREADY" *) input M_AXI_GP0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WSTRB" *) output [3:0]M_AXI_GP0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WVALID" *) output M_AXI_GP0_wvalid;
  input SPI0_MISO_I;
  output SPI0_MISO_O;
  output SPI0_MISO_T;
  input SPI0_MOSI_I;
  output SPI0_MOSI_O;
  output SPI0_MOSI_T;
  input SPI0_SCLK_I;
  output SPI0_SCLK_O;
  output SPI0_SCLK_T;
  output SPI0_SS1_O;
  output SPI0_SS2_O;
  input SPI0_SS_I;
  output SPI0_SS_O;
  output SPI0_SS_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_HP0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_HP0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARBURST" *) input [1:0]S_AXI_HP0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARCACHE" *) input [3:0]S_AXI_HP0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARID" *) input [5:0]S_AXI_HP0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARLEN" *) input [3:0]S_AXI_HP0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARLOCK" *) input [1:0]S_AXI_HP0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARPROT" *) input [2:0]S_AXI_HP0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARQOS" *) input [3:0]S_AXI_HP0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARREADY" *) output S_AXI_HP0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARSIZE" *) input [2:0]S_AXI_HP0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARVALID" *) input S_AXI_HP0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWADDR" *) input [31:0]S_AXI_HP0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWBURST" *) input [1:0]S_AXI_HP0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWCACHE" *) input [3:0]S_AXI_HP0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWID" *) input [5:0]S_AXI_HP0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWLEN" *) input [3:0]S_AXI_HP0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWLOCK" *) input [1:0]S_AXI_HP0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWPROT" *) input [2:0]S_AXI_HP0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWQOS" *) input [3:0]S_AXI_HP0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWREADY" *) output S_AXI_HP0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWSIZE" *) input [2:0]S_AXI_HP0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWVALID" *) input S_AXI_HP0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BID" *) output [5:0]S_AXI_HP0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BREADY" *) input S_AXI_HP0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BRESP" *) output [1:0]S_AXI_HP0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BVALID" *) output S_AXI_HP0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RDATA" *) output [63:0]S_AXI_HP0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RID" *) output [5:0]S_AXI_HP0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RLAST" *) output S_AXI_HP0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RREADY" *) input S_AXI_HP0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RRESP" *) output [1:0]S_AXI_HP0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RVALID" *) output S_AXI_HP0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WDATA" *) input [63:0]S_AXI_HP0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WID" *) input [5:0]S_AXI_HP0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WLAST" *) input S_AXI_HP0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WREADY" *) output S_AXI_HP0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WSTRB" *) input [7:0]S_AXI_HP0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WVALID" *) input S_AXI_HP0_wvalid;

  wire [0:0]arm_gic_id_61_1;
  wire [0:0]arm_gic_id_62_1;
  wire [0:0]arm_gic_id_63_1;
  wire [0:0]arm_gic_id_64_1;
  wire [0:0]arm_gic_id_65_1;
  wire [0:0]arm_gic_id_66_1;
  wire [0:0]arm_gic_id_67_1;
  wire [0:0]arm_gic_id_68_1;
  wire [0:0]arm_gic_id_84_1;
  wire [0:0]arm_gic_id_85_1;
  wire [0:0]arm_gic_id_86_1;
  wire [0:0]arm_gic_id_87_1;
  wire [0:0]arm_gic_id_88_1;
  wire [0:0]arm_gic_id_89_1;
  wire [0:0]arm_gic_id_90_1;
  wire [0:0]arm_gic_id_91_1;
  wire [14:0]processing_system7_0_ddr_ADDR;
  wire [2:0]processing_system7_0_ddr_BA;
  wire processing_system7_0_ddr_CAS_N;
  wire processing_system7_0_ddr_CKE;
  wire processing_system7_0_ddr_CK_N;
  wire processing_system7_0_ddr_CK_P;
  wire processing_system7_0_ddr_CS_N;
  wire [3:0]processing_system7_0_ddr_DM;
  wire [31:0]processing_system7_0_ddr_DQ;
  wire [3:0]processing_system7_0_ddr_DQS_N;
  wire [3:0]processing_system7_0_ddr_DQS_P;
  wire processing_system7_0_ddr_ODT;
  wire processing_system7_0_ddr_RAS_N;
  wire processing_system7_0_ddr_RESET_N;
  wire processing_system7_0_ddr_WE_N;
  wire processing_system7_0_fclk_clk0;
  wire processing_system7_0_fclk_clk1;
  wire processing_system7_0_fclk_clk2;
  wire processing_system7_0_fclk_clk3;
  wire processing_system7_0_fclk_reset0_n;
  wire processing_system7_0_fclk_reset1_n;
  wire processing_system7_0_fclk_reset2_n;
  wire processing_system7_0_fclk_reset3_n;
  wire processing_system7_0_fixed_io_DDR_VRN;
  wire processing_system7_0_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_0_fixed_io_MIO;
  wire processing_system7_0_fixed_io_PS_CLK;
  wire processing_system7_0_fixed_io_PS_PORB;
  wire processing_system7_0_fixed_io_PS_SRSTB;
  wire [31:0]processing_system7_0_m_axi_gp0_ARADDR;
  wire [1:0]processing_system7_0_m_axi_gp0_ARBURST;
  wire [3:0]processing_system7_0_m_axi_gp0_ARCACHE;
  wire [11:0]processing_system7_0_m_axi_gp0_ARID;
  wire [3:0]processing_system7_0_m_axi_gp0_ARLEN;
  wire [1:0]processing_system7_0_m_axi_gp0_ARLOCK;
  wire [2:0]processing_system7_0_m_axi_gp0_ARPROT;
  wire [3:0]processing_system7_0_m_axi_gp0_ARQOS;
  wire processing_system7_0_m_axi_gp0_ARREADY;
  wire [2:0]processing_system7_0_m_axi_gp0_ARSIZE;
  wire processing_system7_0_m_axi_gp0_ARVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_AWADDR;
  wire [1:0]processing_system7_0_m_axi_gp0_AWBURST;
  wire [3:0]processing_system7_0_m_axi_gp0_AWCACHE;
  wire [11:0]processing_system7_0_m_axi_gp0_AWID;
  wire [3:0]processing_system7_0_m_axi_gp0_AWLEN;
  wire [1:0]processing_system7_0_m_axi_gp0_AWLOCK;
  wire [2:0]processing_system7_0_m_axi_gp0_AWPROT;
  wire [3:0]processing_system7_0_m_axi_gp0_AWQOS;
  wire processing_system7_0_m_axi_gp0_AWREADY;
  wire [2:0]processing_system7_0_m_axi_gp0_AWSIZE;
  wire processing_system7_0_m_axi_gp0_AWVALID;
  wire [11:0]processing_system7_0_m_axi_gp0_BID;
  wire processing_system7_0_m_axi_gp0_BREADY;
  wire [1:0]processing_system7_0_m_axi_gp0_BRESP;
  wire processing_system7_0_m_axi_gp0_BVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_RDATA;
  wire [11:0]processing_system7_0_m_axi_gp0_RID;
  wire processing_system7_0_m_axi_gp0_RLAST;
  wire processing_system7_0_m_axi_gp0_RREADY;
  wire [1:0]processing_system7_0_m_axi_gp0_RRESP;
  wire processing_system7_0_m_axi_gp0_RVALID;
  wire [31:0]processing_system7_0_m_axi_gp0_WDATA;
  wire [11:0]processing_system7_0_m_axi_gp0_WID;
  wire processing_system7_0_m_axi_gp0_WLAST;
  wire processing_system7_0_m_axi_gp0_WREADY;
  wire [3:0]processing_system7_0_m_axi_gp0_WSTRB;
  wire processing_system7_0_m_axi_gp0_WVALID;
  wire processing_system7_0_spi0_miso_o;
  wire processing_system7_0_spi0_miso_t;
  wire processing_system7_0_spi0_mosi_o;
  wire processing_system7_0_spi0_mosi_t;
  wire processing_system7_0_spi0_sclk_o;
  wire processing_system7_0_spi0_sclk_t;
  wire processing_system7_0_spi0_ss1_o;
  wire processing_system7_0_spi0_ss2_o;
  wire processing_system7_0_spi0_ss_o;
  wire processing_system7_0_spi0_ss_t;
  wire [31:0]s_axi_hp0_1_ARADDR;
  wire [1:0]s_axi_hp0_1_ARBURST;
  wire [3:0]s_axi_hp0_1_ARCACHE;
  wire [5:0]s_axi_hp0_1_ARID;
  wire [3:0]s_axi_hp0_1_ARLEN;
  wire [1:0]s_axi_hp0_1_ARLOCK;
  wire [2:0]s_axi_hp0_1_ARPROT;
  wire [3:0]s_axi_hp0_1_ARQOS;
  wire s_axi_hp0_1_ARREADY;
  wire [2:0]s_axi_hp0_1_ARSIZE;
  wire s_axi_hp0_1_ARVALID;
  wire [31:0]s_axi_hp0_1_AWADDR;
  wire [1:0]s_axi_hp0_1_AWBURST;
  wire [3:0]s_axi_hp0_1_AWCACHE;
  wire [5:0]s_axi_hp0_1_AWID;
  wire [3:0]s_axi_hp0_1_AWLEN;
  wire [1:0]s_axi_hp0_1_AWLOCK;
  wire [2:0]s_axi_hp0_1_AWPROT;
  wire [3:0]s_axi_hp0_1_AWQOS;
  wire s_axi_hp0_1_AWREADY;
  wire [2:0]s_axi_hp0_1_AWSIZE;
  wire s_axi_hp0_1_AWVALID;
  wire [5:0]s_axi_hp0_1_BID;
  wire s_axi_hp0_1_BREADY;
  wire [1:0]s_axi_hp0_1_BRESP;
  wire s_axi_hp0_1_BVALID;
  wire [63:0]s_axi_hp0_1_RDATA;
  wire [5:0]s_axi_hp0_1_RID;
  wire s_axi_hp0_1_RLAST;
  wire s_axi_hp0_1_RREADY;
  wire [1:0]s_axi_hp0_1_RRESP;
  wire s_axi_hp0_1_RVALID;
  wire [63:0]s_axi_hp0_1_WDATA;
  wire [5:0]s_axi_hp0_1_WID;
  wire s_axi_hp0_1_WLAST;
  wire s_axi_hp0_1_WREADY;
  wire [7:0]s_axi_hp0_1_WSTRB;
  wire s_axi_hp0_1_WVALID;
  wire spi0_miso_i_1;
  wire spi0_mosi_i_1;
  wire spi0_sclk_i_1;
  wire spi0_ss_i_1;
  wire [15:0]xlconcat_0_dout;

  assign FCLK_CLK0 = processing_system7_0_fclk_clk0;
  assign FCLK_CLK1 = processing_system7_0_fclk_clk1;
  assign FCLK_CLK2 = processing_system7_0_fclk_clk2;
  assign FCLK_CLK3 = processing_system7_0_fclk_clk3;
  assign FCLK_RESET0_N = processing_system7_0_fclk_reset0_n;
  assign FCLK_RESET1_N = processing_system7_0_fclk_reset1_n;
  assign FCLK_RESET2_N = processing_system7_0_fclk_reset2_n;
  assign FCLK_RESET3_N = processing_system7_0_fclk_reset3_n;
  assign M_AXI_GP0_araddr[31:0] = processing_system7_0_m_axi_gp0_ARADDR;
  assign M_AXI_GP0_arburst[1:0] = processing_system7_0_m_axi_gp0_ARBURST;
  assign M_AXI_GP0_arcache[3:0] = processing_system7_0_m_axi_gp0_ARCACHE;
  assign M_AXI_GP0_arid[11:0] = processing_system7_0_m_axi_gp0_ARID;
  assign M_AXI_GP0_arlen[3:0] = processing_system7_0_m_axi_gp0_ARLEN;
  assign M_AXI_GP0_arlock[1:0] = processing_system7_0_m_axi_gp0_ARLOCK;
  assign M_AXI_GP0_arprot[2:0] = processing_system7_0_m_axi_gp0_ARPROT;
  assign M_AXI_GP0_arqos[3:0] = processing_system7_0_m_axi_gp0_ARQOS;
  assign M_AXI_GP0_arsize[2:0] = processing_system7_0_m_axi_gp0_ARSIZE;
  assign M_AXI_GP0_arvalid = processing_system7_0_m_axi_gp0_ARVALID;
  assign M_AXI_GP0_awaddr[31:0] = processing_system7_0_m_axi_gp0_AWADDR;
  assign M_AXI_GP0_awburst[1:0] = processing_system7_0_m_axi_gp0_AWBURST;
  assign M_AXI_GP0_awcache[3:0] = processing_system7_0_m_axi_gp0_AWCACHE;
  assign M_AXI_GP0_awid[11:0] = processing_system7_0_m_axi_gp0_AWID;
  assign M_AXI_GP0_awlen[3:0] = processing_system7_0_m_axi_gp0_AWLEN;
  assign M_AXI_GP0_awlock[1:0] = processing_system7_0_m_axi_gp0_AWLOCK;
  assign M_AXI_GP0_awprot[2:0] = processing_system7_0_m_axi_gp0_AWPROT;
  assign M_AXI_GP0_awqos[3:0] = processing_system7_0_m_axi_gp0_AWQOS;
  assign M_AXI_GP0_awsize[2:0] = processing_system7_0_m_axi_gp0_AWSIZE;
  assign M_AXI_GP0_awvalid = processing_system7_0_m_axi_gp0_AWVALID;
  assign M_AXI_GP0_bready = processing_system7_0_m_axi_gp0_BREADY;
  assign M_AXI_GP0_rready = processing_system7_0_m_axi_gp0_RREADY;
  assign M_AXI_GP0_wdata[31:0] = processing_system7_0_m_axi_gp0_WDATA;
  assign M_AXI_GP0_wid[11:0] = processing_system7_0_m_axi_gp0_WID;
  assign M_AXI_GP0_wlast = processing_system7_0_m_axi_gp0_WLAST;
  assign M_AXI_GP0_wstrb[3:0] = processing_system7_0_m_axi_gp0_WSTRB;
  assign M_AXI_GP0_wvalid = processing_system7_0_m_axi_gp0_WVALID;
  assign SPI0_MISO_O = processing_system7_0_spi0_miso_o;
  assign SPI0_MISO_T = processing_system7_0_spi0_miso_t;
  assign SPI0_MOSI_O = processing_system7_0_spi0_mosi_o;
  assign SPI0_MOSI_T = processing_system7_0_spi0_mosi_t;
  assign SPI0_SCLK_O = processing_system7_0_spi0_sclk_o;
  assign SPI0_SCLK_T = processing_system7_0_spi0_sclk_t;
  assign SPI0_SS1_O = processing_system7_0_spi0_ss1_o;
  assign SPI0_SS2_O = processing_system7_0_spi0_ss2_o;
  assign SPI0_SS_O = processing_system7_0_spi0_ss_o;
  assign SPI0_SS_T = processing_system7_0_spi0_ss_t;
  assign S_AXI_HP0_arready = s_axi_hp0_1_ARREADY;
  assign S_AXI_HP0_awready = s_axi_hp0_1_AWREADY;
  assign S_AXI_HP0_bid[5:0] = s_axi_hp0_1_BID;
  assign S_AXI_HP0_bresp[1:0] = s_axi_hp0_1_BRESP;
  assign S_AXI_HP0_bvalid = s_axi_hp0_1_BVALID;
  assign S_AXI_HP0_rdata[63:0] = s_axi_hp0_1_RDATA;
  assign S_AXI_HP0_rid[5:0] = s_axi_hp0_1_RID;
  assign S_AXI_HP0_rlast = s_axi_hp0_1_RLAST;
  assign S_AXI_HP0_rresp[1:0] = s_axi_hp0_1_RRESP;
  assign S_AXI_HP0_rvalid = s_axi_hp0_1_RVALID;
  assign S_AXI_HP0_wready = s_axi_hp0_1_WREADY;
  assign arm_gic_id_61_1 = ARM_GIC_ID_61[0];
  assign arm_gic_id_62_1 = ARM_GIC_ID_62[0];
  assign arm_gic_id_63_1 = ARM_GIC_ID_63[0];
  assign arm_gic_id_64_1 = ARM_GIC_ID_64[0];
  assign arm_gic_id_65_1 = ARM_GIC_ID_65[0];
  assign arm_gic_id_66_1 = ARM_GIC_ID_66[0];
  assign arm_gic_id_67_1 = ARM_GIC_ID_67[0];
  assign arm_gic_id_68_1 = ARM_GIC_ID_68[0];
  assign arm_gic_id_84_1 = ARM_GIC_ID_84[0];
  assign arm_gic_id_85_1 = ARM_GIC_ID_85[0];
  assign arm_gic_id_86_1 = ARM_GIC_ID_86[0];
  assign arm_gic_id_87_1 = ARM_GIC_ID_87[0];
  assign arm_gic_id_88_1 = ARM_GIC_ID_88[0];
  assign arm_gic_id_89_1 = ARM_GIC_ID_89[0];
  assign arm_gic_id_90_1 = ARM_GIC_ID_90[0];
  assign arm_gic_id_91_1 = ARM_GIC_ID_91[0];
  assign processing_system7_0_m_axi_gp0_ARREADY = M_AXI_GP0_arready;
  assign processing_system7_0_m_axi_gp0_AWREADY = M_AXI_GP0_awready;
  assign processing_system7_0_m_axi_gp0_BID = M_AXI_GP0_bid[11:0];
  assign processing_system7_0_m_axi_gp0_BRESP = M_AXI_GP0_bresp[1:0];
  assign processing_system7_0_m_axi_gp0_BVALID = M_AXI_GP0_bvalid;
  assign processing_system7_0_m_axi_gp0_RDATA = M_AXI_GP0_rdata[31:0];
  assign processing_system7_0_m_axi_gp0_RID = M_AXI_GP0_rid[11:0];
  assign processing_system7_0_m_axi_gp0_RLAST = M_AXI_GP0_rlast;
  assign processing_system7_0_m_axi_gp0_RRESP = M_AXI_GP0_rresp[1:0];
  assign processing_system7_0_m_axi_gp0_RVALID = M_AXI_GP0_rvalid;
  assign processing_system7_0_m_axi_gp0_WREADY = M_AXI_GP0_wready;
  assign s_axi_hp0_1_ARADDR = S_AXI_HP0_araddr[31:0];
  assign s_axi_hp0_1_ARBURST = S_AXI_HP0_arburst[1:0];
  assign s_axi_hp0_1_ARCACHE = S_AXI_HP0_arcache[3:0];
  assign s_axi_hp0_1_ARID = S_AXI_HP0_arid[5:0];
  assign s_axi_hp0_1_ARLEN = S_AXI_HP0_arlen[3:0];
  assign s_axi_hp0_1_ARLOCK = S_AXI_HP0_arlock[1:0];
  assign s_axi_hp0_1_ARPROT = S_AXI_HP0_arprot[2:0];
  assign s_axi_hp0_1_ARQOS = S_AXI_HP0_arqos[3:0];
  assign s_axi_hp0_1_ARSIZE = S_AXI_HP0_arsize[2:0];
  assign s_axi_hp0_1_ARVALID = S_AXI_HP0_arvalid;
  assign s_axi_hp0_1_AWADDR = S_AXI_HP0_awaddr[31:0];
  assign s_axi_hp0_1_AWBURST = S_AXI_HP0_awburst[1:0];
  assign s_axi_hp0_1_AWCACHE = S_AXI_HP0_awcache[3:0];
  assign s_axi_hp0_1_AWID = S_AXI_HP0_awid[5:0];
  assign s_axi_hp0_1_AWLEN = S_AXI_HP0_awlen[3:0];
  assign s_axi_hp0_1_AWLOCK = S_AXI_HP0_awlock[1:0];
  assign s_axi_hp0_1_AWPROT = S_AXI_HP0_awprot[2:0];
  assign s_axi_hp0_1_AWQOS = S_AXI_HP0_awqos[3:0];
  assign s_axi_hp0_1_AWSIZE = S_AXI_HP0_awsize[2:0];
  assign s_axi_hp0_1_AWVALID = S_AXI_HP0_awvalid;
  assign s_axi_hp0_1_BREADY = S_AXI_HP0_bready;
  assign s_axi_hp0_1_RREADY = S_AXI_HP0_rready;
  assign s_axi_hp0_1_WDATA = S_AXI_HP0_wdata[63:0];
  assign s_axi_hp0_1_WID = S_AXI_HP0_wid[5:0];
  assign s_axi_hp0_1_WLAST = S_AXI_HP0_wlast;
  assign s_axi_hp0_1_WSTRB = S_AXI_HP0_wstrb[7:0];
  assign s_axi_hp0_1_WVALID = S_AXI_HP0_wvalid;
  assign spi0_miso_i_1 = SPI0_MISO_I;
  assign spi0_mosi_i_1 = SPI0_MOSI_I;
  assign spi0_sclk_i_1 = SPI0_SCLK_I;
  assign spi0_ss_i_1 = SPI0_SS_I;
  system_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_fclk_clk0),
        .FCLK_CLK1(processing_system7_0_fclk_clk1),
        .FCLK_CLK2(processing_system7_0_fclk_clk2),
        .FCLK_CLK3(processing_system7_0_fclk_clk3),
        .FCLK_RESET0_N(processing_system7_0_fclk_reset0_n),
        .FCLK_RESET1_N(processing_system7_0_fclk_reset1_n),
        .FCLK_RESET2_N(processing_system7_0_fclk_reset2_n),
        .FCLK_RESET3_N(processing_system7_0_fclk_reset3_n),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_fclk_clk0),
        .M_AXI_GP0_ARADDR(processing_system7_0_m_axi_gp0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_m_axi_gp0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_m_axi_gp0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_m_axi_gp0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_m_axi_gp0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_m_axi_gp0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_m_axi_gp0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_m_axi_gp0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_m_axi_gp0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_m_axi_gp0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_m_axi_gp0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_m_axi_gp0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_m_axi_gp0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_m_axi_gp0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_m_axi_gp0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_m_axi_gp0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_m_axi_gp0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_m_axi_gp0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_m_axi_gp0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_m_axi_gp0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_m_axi_gp0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_m_axi_gp0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_m_axi_gp0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_m_axi_gp0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_m_axi_gp0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_m_axi_gp0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_m_axi_gp0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_m_axi_gp0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_m_axi_gp0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_m_axi_gp0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_m_axi_gp0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_m_axi_gp0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_m_axi_gp0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_m_axi_gp0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_m_axi_gp0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_m_axi_gp0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_m_axi_gp0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_m_axi_gp0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(spi0_miso_i_1),
        .SPI0_MISO_O(processing_system7_0_spi0_miso_o),
        .SPI0_MISO_T(processing_system7_0_spi0_miso_t),
        .SPI0_MOSI_I(spi0_mosi_i_1),
        .SPI0_MOSI_O(processing_system7_0_spi0_mosi_o),
        .SPI0_MOSI_T(processing_system7_0_spi0_mosi_t),
        .SPI0_SCLK_I(spi0_sclk_i_1),
        .SPI0_SCLK_O(processing_system7_0_spi0_sclk_o),
        .SPI0_SCLK_T(processing_system7_0_spi0_sclk_t),
        .SPI0_SS1_O(processing_system7_0_spi0_ss1_o),
        .SPI0_SS2_O(processing_system7_0_spi0_ss2_o),
        .SPI0_SS_I(spi0_ss_i_1),
        .SPI0_SS_O(processing_system7_0_spi0_ss_o),
        .SPI0_SS_T(processing_system7_0_spi0_ss_t),
        .S_AXI_HP0_ACLK(processing_system7_0_fclk_clk0),
        .S_AXI_HP0_ARADDR(s_axi_hp0_1_ARADDR),
        .S_AXI_HP0_ARBURST(s_axi_hp0_1_ARBURST),
        .S_AXI_HP0_ARCACHE(s_axi_hp0_1_ARCACHE),
        .S_AXI_HP0_ARID(s_axi_hp0_1_ARID),
        .S_AXI_HP0_ARLEN(s_axi_hp0_1_ARLEN),
        .S_AXI_HP0_ARLOCK(s_axi_hp0_1_ARLOCK),
        .S_AXI_HP0_ARPROT(s_axi_hp0_1_ARPROT),
        .S_AXI_HP0_ARQOS(s_axi_hp0_1_ARQOS),
        .S_AXI_HP0_ARREADY(s_axi_hp0_1_ARREADY),
        .S_AXI_HP0_ARSIZE(s_axi_hp0_1_ARSIZE),
        .S_AXI_HP0_ARVALID(s_axi_hp0_1_ARVALID),
        .S_AXI_HP0_AWADDR(s_axi_hp0_1_AWADDR),
        .S_AXI_HP0_AWBURST(s_axi_hp0_1_AWBURST),
        .S_AXI_HP0_AWCACHE(s_axi_hp0_1_AWCACHE),
        .S_AXI_HP0_AWID(s_axi_hp0_1_AWID),
        .S_AXI_HP0_AWLEN(s_axi_hp0_1_AWLEN),
        .S_AXI_HP0_AWLOCK(s_axi_hp0_1_AWLOCK),
        .S_AXI_HP0_AWPROT(s_axi_hp0_1_AWPROT),
        .S_AXI_HP0_AWQOS(s_axi_hp0_1_AWQOS),
        .S_AXI_HP0_AWREADY(s_axi_hp0_1_AWREADY),
        .S_AXI_HP0_AWSIZE(s_axi_hp0_1_AWSIZE),
        .S_AXI_HP0_AWVALID(s_axi_hp0_1_AWVALID),
        .S_AXI_HP0_BID(s_axi_hp0_1_BID),
        .S_AXI_HP0_BREADY(s_axi_hp0_1_BREADY),
        .S_AXI_HP0_BRESP(s_axi_hp0_1_BRESP),
        .S_AXI_HP0_BVALID(s_axi_hp0_1_BVALID),
        .S_AXI_HP0_RDATA(s_axi_hp0_1_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(s_axi_hp0_1_RID),
        .S_AXI_HP0_RLAST(s_axi_hp0_1_RLAST),
        .S_AXI_HP0_RREADY(s_axi_hp0_1_RREADY),
        .S_AXI_HP0_RRESP(s_axi_hp0_1_RRESP),
        .S_AXI_HP0_RVALID(s_axi_hp0_1_RVALID),
        .S_AXI_HP0_WDATA(s_axi_hp0_1_WDATA),
        .S_AXI_HP0_WID(s_axi_hp0_1_WID),
        .S_AXI_HP0_WLAST(s_axi_hp0_1_WLAST),
        .S_AXI_HP0_WREADY(s_axi_hp0_1_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(s_axi_hp0_1_WSTRB),
        .S_AXI_HP0_WVALID(s_axi_hp0_1_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_xlconcat_0_0 xlconcat_0
       (.In0(arm_gic_id_91_1),
        .In1(arm_gic_id_90_1),
        .In10(arm_gic_id_66_1),
        .In11(arm_gic_id_65_1),
        .In12(arm_gic_id_64_1),
        .In13(arm_gic_id_63_1),
        .In14(arm_gic_id_62_1),
        .In15(arm_gic_id_61_1),
        .In2(arm_gic_id_89_1),
        .In3(arm_gic_id_88_1),
        .In4(arm_gic_id_87_1),
        .In5(arm_gic_id_86_1),
        .In6(arm_gic_id_85_1),
        .In7(arm_gic_id_84_1),
        .In8(arm_gic_id_68_1),
        .In9(arm_gic_id_67_1),
        .dout(xlconcat_0_dout));
endmodule
