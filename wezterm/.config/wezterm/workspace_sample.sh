#!/bin/zsh

readonly WORK_DIR="${HOME}/src/"

open /Applications/WezTerm.app

# ----------
# two-pane
# ----------
tab_name=two-pane
# create pane
pane1_id=$(wezterm cli spawn --cwd $WORK_DIR)
pane2_id=$(wezterm cli split-pane --right --percent 70 --pane-id $pane1_id)
# set title
wezterm cli set-tab-title --pane-id $pane1_id $tab_name
# set command
echo 'pwd\n' | wezterm cli send-text --pane-id $pane1_id --no-paste
echo 'pwd\n' | wezterm cli send-text --pane-id $pane2_id --no-paste

# ----------
# three-pane
# ----------
tab_name=three-pane
# create pane
pane1_id=$(wezterm cli spawn --cwd $WORK_DIR)
pane2_id=$(wezterm cli split-pane --right --percent 70 --pane-id $pane1_id)
pane3_id=$(wezterm cli split-pane --bottom --percent 50 --pane-id $pane1_id)
# set title
wezterm cli set-tab-title --pane-id $pane1_id $tab_name
# set command
echo 'pwd\n' | wezterm cli send-text --pane-id $pane1_id --no-paste
echo 'pwd\n' | wezterm cli send-text --pane-id $pane2_id --no-paste

# ----------
# four-pane
# ----------
tab_name=four-pane
# create pane
pane1_id=$(wezterm cli spawn --cwd $WORK_DIR)
pane2_id=$(wezterm cli split-pane --right --percent 70 --pane-id $pane1_id)
pane3_id=$(wezterm cli split-pane --bottom --percent 50 --pane-id $pane1_id)
pane4_id=$(wezterm cli split-pane --bottom --percent 80 --pane-id $pane2_id)
# set title
wezterm cli set-tab-title --pane-id $pane1_id $tab_name
# set command
echo 'pwd\n' | wezterm cli send-text --pane-id $pane1_id --no-paste
echo 'pwd\n' | wezterm cli send-text --pane-id $pane2_id --no-paste
echo 'pwd\n' | wezterm cli send-text --pane-id $pane3_id --no-paste
echo 'pwd\n' | wezterm cli send-text --pane-id $pane4_id --no-paste
