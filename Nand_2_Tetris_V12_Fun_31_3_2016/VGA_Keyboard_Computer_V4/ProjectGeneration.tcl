#
# Created by System Generator     Sat Apr  2 10:07:58 2016
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {HDL Netlist}
    set Project {keyboard_dino_computer_v12_cw}
    set DSPFamily {Spartan3E}
    set DSPDevice {xc3s1200e}
    set DSPPackage {fg320}
    set DSPSpeed {-4}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {50}
    set CreateInterfaceDocument {off}
    set NewXSTParser {0}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{keyboard_dino_computer_v12_cw.vhd} -view All}
        {{keyboard_dino_computer_v12.vhd} -view All}
        {{keyboard_dino_computer_v12_cw.ucf}}
        {{keyboard_dino_computer_v12_cw.xdc}}
        {{bmg_72_9feca0d304d5757b.mif}}
        {{bmg_72_e8fe9883cd15d256.mif}}
        {{dmg_72_486d14eecadccd6c.mif}}
        {{C:\Users\Adithya\Desktop\Nand2tetriswork\Nand_2_Tetris_V12_Fun_31_3_2016\Keyboard_dino_Computer_V12.mdl}}
    }
    set TopLevelModule {keyboard_dino_computer_v12_cw}
    set SynthesisConstraintsFile {keyboard_dino_computer_v12_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create