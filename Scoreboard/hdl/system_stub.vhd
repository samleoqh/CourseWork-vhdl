-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_Uart_1_RX_pin : in std_logic;
    fpga_0_RS232_Uart_1_TX_pin : out std_logic;
    fpga_0_DIP_Switches_8Bits_GPIO_IO_I_pin : in std_logic_vector(0 to 7);
    fpga_0_LEDs_8Bits_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
    fpga_0_Push_Buttons_4Bits_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    fpga_0_PS2_Mouse_Keyboard_PS2_1_DATA_pin : inout std_logic;
    fpga_0_PS2_Mouse_Keyboard_PS2_1_CLK_pin : inout std_logic;
    fpga_0_PS2_Mouse_Keyboard_PS2_2_DATA_pin : inout std_logic;
    fpga_0_PS2_Mouse_Keyboard_PS2_2_CLK_pin : inout std_logic;
    fpga_0_Digilent_SevSeg_Disp_AN_pin : out std_logic_vector(3 downto 0);
    fpga_0_Digilent_SevSeg_Disp_SEG_pin : out std_logic_vector(7 downto 0);
    fpga_0_mem_bus_mux_0_MEM_ADDR_pin : out std_logic_vector(0 to 22);
    fpga_0_mem_bus_mux_0_DQ_pin : inout std_logic_vector(0 to 15);
    fpga_0_mem_bus_mux_0_MEM_OEN_pin : out std_logic;
    fpga_0_mem_bus_mux_0_MEM_WEN_pin : out std_logic;
    fpga_0_mem_bus_mux_0_RAM_CEN_O_pin : out std_logic;
    fpga_0_mem_bus_mux_0_RAM_BEN_O_pin : out std_logic_vector(0 to 1);
    fpga_0_mem_bus_mux_0_FLASH_ADDR_pin : out std_logic_vector(5 to 7);
    fpga_0_mem_bus_mux_0_FLASH_CEN_O_pin : out std_logic;
    fpga_0_mem_bus_mux_0_FLASH_RPN_O_pin : out std_logic;
    fpga_0_mem_bus_mux_0_QUAD_SPI_C_O_pin : out std_logic;
    fpga_0_mem_bus_mux_0_QUAD_SPI_S_O_pin : out std_logic;
    fpga_0_mem_bus_mux_0_MOSI_QUAD_SPI_pin : inout std_logic;
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    tft_controller_TFT_HSYNC_pin : out std_logic;
    tft_controller_TFT_VSYNC_pin : out std_logic;
    tft_controller_TFT_VGA_R_pin : out std_logic_vector(5 downto 3);
    tft_controller_TFT_VGA_G_pin : out std_logic_vector(5 downto 3);
    tft_controller_TFT_VGA_B_pin : out std_logic_vector(5 downto 4)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_Uart_1_RX_pin : in std_logic;
      fpga_0_RS232_Uart_1_TX_pin : out std_logic;
      fpga_0_DIP_Switches_8Bits_GPIO_IO_I_pin : in std_logic_vector(0 to 7);
      fpga_0_LEDs_8Bits_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
      fpga_0_Push_Buttons_4Bits_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      fpga_0_PS2_Mouse_Keyboard_PS2_1_DATA_pin : inout std_logic;
      fpga_0_PS2_Mouse_Keyboard_PS2_1_CLK_pin : inout std_logic;
      fpga_0_PS2_Mouse_Keyboard_PS2_2_DATA_pin : inout std_logic;
      fpga_0_PS2_Mouse_Keyboard_PS2_2_CLK_pin : inout std_logic;
      fpga_0_Digilent_SevSeg_Disp_AN_pin : out std_logic_vector(3 downto 0);
      fpga_0_Digilent_SevSeg_Disp_SEG_pin : out std_logic_vector(7 downto 0);
      fpga_0_mem_bus_mux_0_MEM_ADDR_pin : out std_logic_vector(0 to 22);
      fpga_0_mem_bus_mux_0_DQ_pin : inout std_logic_vector(0 to 15);
      fpga_0_mem_bus_mux_0_MEM_OEN_pin : out std_logic;
      fpga_0_mem_bus_mux_0_MEM_WEN_pin : out std_logic;
      fpga_0_mem_bus_mux_0_RAM_CEN_O_pin : out std_logic;
      fpga_0_mem_bus_mux_0_RAM_BEN_O_pin : out std_logic_vector(0 to 1);
      fpga_0_mem_bus_mux_0_FLASH_ADDR_pin : out std_logic_vector(5 to 7);
      fpga_0_mem_bus_mux_0_FLASH_CEN_O_pin : out std_logic;
      fpga_0_mem_bus_mux_0_FLASH_RPN_O_pin : out std_logic;
      fpga_0_mem_bus_mux_0_QUAD_SPI_C_O_pin : out std_logic;
      fpga_0_mem_bus_mux_0_QUAD_SPI_S_O_pin : out std_logic;
      fpga_0_mem_bus_mux_0_MOSI_QUAD_SPI_pin : inout std_logic;
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      tft_controller_TFT_HSYNC_pin : out std_logic;
      tft_controller_TFT_VSYNC_pin : out std_logic;
      tft_controller_TFT_VGA_R_pin : out std_logic_vector(5 downto 3);
      tft_controller_TFT_VGA_G_pin : out std_logic_vector(5 downto 3);
      tft_controller_TFT_VGA_B_pin : out std_logic_vector(5 downto 4)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_RS232_Uart_1_RX_pin => fpga_0_RS232_Uart_1_RX_pin,
      fpga_0_RS232_Uart_1_TX_pin => fpga_0_RS232_Uart_1_TX_pin,
      fpga_0_DIP_Switches_8Bits_GPIO_IO_I_pin => fpga_0_DIP_Switches_8Bits_GPIO_IO_I_pin,
      fpga_0_LEDs_8Bits_GPIO_IO_O_pin => fpga_0_LEDs_8Bits_GPIO_IO_O_pin,
      fpga_0_Push_Buttons_4Bits_GPIO_IO_I_pin => fpga_0_Push_Buttons_4Bits_GPIO_IO_I_pin,
      fpga_0_PS2_Mouse_Keyboard_PS2_1_DATA_pin => fpga_0_PS2_Mouse_Keyboard_PS2_1_DATA_pin,
      fpga_0_PS2_Mouse_Keyboard_PS2_1_CLK_pin => fpga_0_PS2_Mouse_Keyboard_PS2_1_CLK_pin,
      fpga_0_PS2_Mouse_Keyboard_PS2_2_DATA_pin => fpga_0_PS2_Mouse_Keyboard_PS2_2_DATA_pin,
      fpga_0_PS2_Mouse_Keyboard_PS2_2_CLK_pin => fpga_0_PS2_Mouse_Keyboard_PS2_2_CLK_pin,
      fpga_0_Digilent_SevSeg_Disp_AN_pin => fpga_0_Digilent_SevSeg_Disp_AN_pin,
      fpga_0_Digilent_SevSeg_Disp_SEG_pin => fpga_0_Digilent_SevSeg_Disp_SEG_pin,
      fpga_0_mem_bus_mux_0_MEM_ADDR_pin => fpga_0_mem_bus_mux_0_MEM_ADDR_pin,
      fpga_0_mem_bus_mux_0_DQ_pin => fpga_0_mem_bus_mux_0_DQ_pin,
      fpga_0_mem_bus_mux_0_MEM_OEN_pin => fpga_0_mem_bus_mux_0_MEM_OEN_pin,
      fpga_0_mem_bus_mux_0_MEM_WEN_pin => fpga_0_mem_bus_mux_0_MEM_WEN_pin,
      fpga_0_mem_bus_mux_0_RAM_CEN_O_pin => fpga_0_mem_bus_mux_0_RAM_CEN_O_pin,
      fpga_0_mem_bus_mux_0_RAM_BEN_O_pin => fpga_0_mem_bus_mux_0_RAM_BEN_O_pin,
      fpga_0_mem_bus_mux_0_FLASH_ADDR_pin => fpga_0_mem_bus_mux_0_FLASH_ADDR_pin,
      fpga_0_mem_bus_mux_0_FLASH_CEN_O_pin => fpga_0_mem_bus_mux_0_FLASH_CEN_O_pin,
      fpga_0_mem_bus_mux_0_FLASH_RPN_O_pin => fpga_0_mem_bus_mux_0_FLASH_RPN_O_pin,
      fpga_0_mem_bus_mux_0_QUAD_SPI_C_O_pin => fpga_0_mem_bus_mux_0_QUAD_SPI_C_O_pin,
      fpga_0_mem_bus_mux_0_QUAD_SPI_S_O_pin => fpga_0_mem_bus_mux_0_QUAD_SPI_S_O_pin,
      fpga_0_mem_bus_mux_0_MOSI_QUAD_SPI_pin => fpga_0_mem_bus_mux_0_MOSI_QUAD_SPI_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      tft_controller_TFT_HSYNC_pin => tft_controller_TFT_HSYNC_pin,
      tft_controller_TFT_VSYNC_pin => tft_controller_TFT_VSYNC_pin,
      tft_controller_TFT_VGA_R_pin => tft_controller_TFT_VGA_R_pin,
      tft_controller_TFT_VGA_G_pin => tft_controller_TFT_VGA_G_pin,
      tft_controller_TFT_VGA_B_pin => tft_controller_TFT_VGA_B_pin
    );

end architecture STRUCTURE;

