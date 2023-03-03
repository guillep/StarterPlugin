cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0053 NEW)

# Our Plugin project
project(StarterPlugin VERSION 1.0.0)

# Import the plugin builder framework
# This will import the Pharo VM and helper functions
include(dependencies/PharoPluginBuilder/dependencies/pharo-vm/cmake/PharoPluginBuilder.cmake)

configure_pharo_vm_plugin(StarterPlugin
    generated/64/plugins/src/StarterPlugin/StarterPlugin.c)