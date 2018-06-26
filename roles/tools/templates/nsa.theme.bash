#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✖︎ "
SCM_THEME_PROMPT_CLEAN=" ${green}✓"
SCM_THEME_PROMPT_PREFIX=" ("
SCM_THEME_PROMPT_SUFFIX="${green})"

GIT_THEME_PROMPT_DIRTY=" ${red}✖︎ "
GIT_THEME_PROMPT_CLEAN=" ${green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}("
GIT_THEME_PROMPT_SUFFIX="${green})"

RVM_THEME_PROMPT_PREFIX="("
RVM_THEME_PROMPT_SUFFIX=")"

function prompt_command() {
    AWS_INFO="[AWS/${AWS_PROFILE:-default}/${AWS_DEFAULT_REGION:-default}]"
    [ -z "${AWS_PROFILE}" ] && [ -z "${AWS_DEFAULT_REGION}" ] && AWS_INFO=""
    PS1="\n${yellow}\w${green}$(scm_prompt_info) ${AWS_INFO}\n${reset_color}${green}λ${reset_color} "
}

safe_append_prompt_command prompt_command
