# Modular prompt main file
# Load configuration
source ~/.config/zsh/prompt/config/settings.zsh

# Load styles
source ~/.config/zsh/prompt/styles/colors.zsh
source ~/.config/zsh/prompt/styles/symbols.zsh

# Load components
source ~/.config/zsh/prompt/components/user.zsh
source ~/.config/zsh/prompt/components/tty.zsh
source ~/.config/zsh/prompt/components/directory.zsh
source ~/.config/zsh/prompt/components/git.zsh
source ~/.config/zsh/prompt/components/weather.zsh
source ~/.config/zsh/prompt/components/time.zsh
source ~/.config/zsh/prompt/components/prompt_line.zsh

# Enable prompt substitution
setopt PROMPT_SUBST

# Build modular prompt
build_prompt() {
    local prompt_content=""
    
    # Add each module
    for module in "${PROMPT_MODULES[@]}"; do
        case $module in
            user) prompt_content+="$(render_user_segment)" ;;
            tty) prompt_content+="$(render_tty_segment)" ;;
            directory) prompt_content+="$(render_directory_segment)" ;;
            git) prompt_content+="$(render_git_segment)" ;;
            weather) prompt_content+="$(render_weather_segment)" ;;
            time) prompt_content+="$(render_time_segment)" ;;
        esac
    done
    
    # Add prompt line
    prompt_content+="%b
$(render_prompt_line)"
    
    echo "$prompt_content"
}

# Set prompt
PROMPT='%B$(build_prompt)'

# Set right prompt if enabled
if [[ "$ENABLE_RIGHT_PROMPT" == "true" ]]; then
    RPS1="$(render_right_prompt)"
fi
