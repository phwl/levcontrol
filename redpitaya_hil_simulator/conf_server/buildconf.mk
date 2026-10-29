
# Build container configuration

# CONFIG_BUILD_CONTAINER can be:
#  - host: Build everything on the host machine the makefile is run on
#  - docker: Build everything inside a builder container using docker.
CONFIG_BUILD_CONTAINER := host

# Default paths
CONFIG_BUILD_DIR := $(ROOT_DIR)/build

# Flags for build tools
CONFIG_CC_PATH           := gcc
CONFIG_CC_DEFAULT_FLAGS  :=

CONFIG_CCX_PATH          := g++
CONFIG_CCX_DEFAULT_FLAGS :=

CONFIG_LD_PATH           := g++
CONFIG_LD_DEFAULT_FLAGS  :=

CONFIG_AR_PATH           := ar

# Flags for docker integration
# CONFIG_DOCKER_PATH		:= docker
# CONFIG_DOCKER_DIR       := $(ROOT_DIR)/bbuild/docker
# CONFIG_DOCKER_IMG   	:= buildenv-hilsim-sw
# CONFIG_DOCKER_IMG_VER   := staging

################################################################################

# Modules available in the current build tree

MODULES_AVAILABLE += ./hilsim_server

# Root modules to build.
ROOT_MODULES += hilsim_server