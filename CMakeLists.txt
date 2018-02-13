cmake_minimum_required(VERSION 2.8)

project(StoSiPrakt NONE)
include(UseLATEX)

add_custom_target(
	writegitid ALL
	COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/write-gitid.sh
	WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

set(MATLAB
	matlab/hist_out.m
	matlab/hist_rand.m
	matlab/mixed_positions.m
	matlab/mulaw.m
)

add_latex_document(
  StochastischeSignalePraktikum.tex
  FORCE_PDF
  IMAGE_DIRS img
  INPUTS ${MATLAB}
  DEPENDS writegitid
)
