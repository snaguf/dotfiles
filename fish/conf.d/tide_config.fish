set -g tide_prompt_add_newline_before true
set -g tide_prompt_icon_connection "·"
set -g tide_prompt_color_frame_and_connection brblack
set -g tide_prompt_pad_items true

set -g tide_left_prompt_frame_enabled true
set -g tide_left_prompt_prefix \ue0b6
set -g tide_left_prompt_separator_diff_color \ue0b0
set -g tide_left_prompt_separator_same_color \ue0b1
set -g tide_left_prompt_suffix \ue0b0
set -g tide_left_prompt_items os pwd git newline character

set -g tide_right_prompt_frame_enabled false
set -g tide_right_prompt_prefix \ue0b2
set -g tide_right_prompt_separator_diff_color \ue0b2
set -g tide_right_prompt_separator_same_color \ue0b3
set -g tide_right_prompt_suffix ''
set -g tide_right_prompt_items status cmd_duration context time newline node

set -g tide_os_bg_color cyan
set -g tide_os_color brwhite

set -g tide_git_icon \uf418
set -g tide_git_bg_color brgreen
set -g tide_git_bg_color_unstable purple
set -g tide_git_color_branch black
set -g tide_git_color_staged white 
set -g tide_git_color_dirty white
set -g tide_git_color_untracked white 

set -g tide_node_icon \uf898
